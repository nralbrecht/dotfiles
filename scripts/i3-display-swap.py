import asyncio
import argparse
from i3ipc import Con
from i3ipc.aio import Connection

class SwapDisplays:
    i3: Connection | None = None

    async def connect(self):
        self.i3 = await Connection().connect()

    async def get_workspace_container_by_number(self, number: int) -> Con:
        root = await self.i3.get_tree()

        for workspace in root.workspaces():
            if workspace.num == number:
                return workspace

        raise Exception("Could not find workspace")

    async def get_active_workspace_by_output(self, output: str) -> Con:
        for workspace in await self.i3.get_workspaces():
            if workspace.visible and workspace.output == output:
                return await self.get_workspace_container_by_number(workspace.num)

    async def get_focused_container(self) -> Con:
        root = await self.i3.get_tree()

        return root.find_focused()

    async def swap_workspaces_on_outputs(self, output_a: str, output_b: str):
        workspace_a = await self.get_active_workspace_by_output(output_a)
        workspace_b = await self.get_active_workspace_by_output(output_b)
        container_focused = await self.get_focused_container()

        # print("primary:", workspace_a.name, "secondary:", workspace_b.name, "focused:", container_focused.name)

        await workspace_a.command("focus")
        await workspace_a.command(f"move workspace to output {output_b}")

        await workspace_b.command("focus")
        await workspace_b.command(f"move workspace to output {output_a}")

        await container_focused.command("focus")


if __name__ == "__main__":
    async def main():
        parser = argparse.ArgumentParser(description="Swap the I3 displays on the given outputs")
        parser.add_argument("output_primary", type=str, help="Output ID as used by I3")
        parser.add_argument("output_secondary", type=str, help="Output ID as used by I3")

        args = parser.parse_args()

        swap = SwapDisplays()
        await swap.connect()
        await swap.swap_workspaces_on_outputs(args.output_primary, args.output_secondary)

    asyncio.run(main())
