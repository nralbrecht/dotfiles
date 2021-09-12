#ifdef _WINDOW_CONFIG

/* default window dimensions (overwritten via -g option): */
enum {
	WIN_WIDTH  = 800,
	WIN_HEIGHT = 600
};

#endif
#ifdef _IMAGE_CONFIG

/* levels (in percent) to use when zooming via '-' and '+':
 * (first/last value is used as min/max zoom level)
 */
static const float zoom_levels[] = {
	 12.5,  25.0,  50.0,  75.0,
	100.0, 150.0, 200.0, 400.0, 800.0
};

/* default slideshow delay (in sec, overwritten via -S option): */
enum { SLIDESHOW_DELAY = 3 };

/* gamma correction: the user-visible ranges [-GAMMA_RANGE, 0] and
 * (0, GAMMA_RANGE] are mapped to the ranges [0, 1], and (1, GAMMA_MAX].
 * */
static const double GAMMA_MAX   = 10.0;
static const int    GAMMA_RANGE = 32;

/* command i_scroll pans image 1/PAN_FRACTION of screen width/height */
static const int PAN_FRACTION = 5;

/* if false, pixelate images at zoom level != 100%,
 * toggled with 'a' key binding
 */
static const bool ANTI_ALIAS = true;

/* if true, use a checkerboard background for alpha layer,
 * toggled with 'A' key binding
 */
static const bool ALPHA_LAYER = false;

#endif
#ifdef _THUMBS_CONFIG

/* thumbnail sizes in pixels (width == height): */
static const int thumb_sizes[] = { 32, 64, 96, 128, 160 };

/* thumbnail size at startup, index into thumb_sizes[]: */
static const int THUMB_SIZE = 2;

#endif
#ifdef _MAPPINGS_CONFIG

/* keyboard mappings for image and thumbnail mode: */
static const keymap_t keys[] = {
	/* modifiers    key               function              argument */
	{ 0,            XK_q,             g_quit,               None },
	{ 0,            XK_Return,        g_switch_mode,        None },
	{ 0,            XK_f,             g_toggle_fullscreen,  None },
	{ 0,            XK_b,             g_toggle_bar,         None },

	{ 0,            XK_plus,          g_zoom,               +1 },
	{ 0,            XK_KP_Add,        g_zoom,               +1 },
	{ 0,            XK_minus,         g_zoom,               -1 },
	{ 0,            XK_KP_Subtract,   g_zoom,               -1 },

	{ 0,            XK_Begin,         g_first,              None },
	{ 0,            XK_End,           g_n_or_last,          None },

	{ 0,            XK_r,             g_reload_image,       None },
	{ ControlMask,  XK_r,             t_reload_all,         None },
	{ 0,            XK_Delete,        g_remove_image,       None },

	{ 0,            XK_period,        g_change_gamma,       -1 },
	{ 0,            XK_comma,         g_change_gamma,       +1 },
	{ ControlMask,  XK_period,        g_change_gamma,       0 },
	{ ControlMask,  XK_comma,         g_change_gamma,       0 },

	{ ControlMask,  XK_Left,          g_scroll_screen,      DIR_LEFT },
	{ ControlMask,  XK_Down,          g_scroll_screen,      DIR_DOWN },
	{ ControlMask,  XK_Up,            g_scroll_screen,      DIR_UP },
	{ ControlMask,  XK_Right,         g_scroll_screen,      DIR_RIGHT },

	{ 0,            XK_Left,          t_move_sel,           DIR_LEFT },
	{ 0,            XK_Down,          t_move_sel,           DIR_DOWN },
	{ 0,            XK_Up,            t_move_sel,           DIR_UP },
	{ 0,            XK_Right,         t_move_sel,           DIR_RIGHT },

	{ 0,            XK_Right,         i_navigate,           +1 },
	{ 0,            XK_Left,          i_navigate,           -1 },

	{ 0,            XK_Up,            i_navigate_frame,     +1 },
	{ 0,            XK_Down,          i_navigate_frame,     -1 },
	{ 0,            XK_space,         i_toggle_animation,   None },

	{ ShiftMask,    XK_Left,          i_scroll,             DIR_LEFT },
	{ ShiftMask,    XK_Down,          i_scroll,             DIR_DOWN },
	{ ShiftMask,    XK_Up,            i_scroll,             DIR_UP },
	{ ShiftMask,    XK_Right,         i_scroll,             DIR_RIGHT },

	{ 0,            XK_F1,            i_rotate,             DEGREE_270 },
	{ 0,            XK_F2,            i_rotate,             DEGREE_90 },
	{ 0,            XK_F3,            i_rotate,             DEGREE_180 },

	{ 0,            XK_F5,            i_flip,               FLIP_HORIZONTAL },
	{ 0,            XK_F6,            i_flip,               FLIP_VERTICAL },

	{ 0,            XK_F9,            i_fit_to_win,         SCALE_DOWN },
	{ 0,            XK_F10,           i_fit_to_win,         SCALE_HEIGHT },
	{ 0,            XK_F11,           i_fit_to_win,         SCALE_WIDTH },
	{ 0,            XK_F12,           i_fit_to_win,         SCALE_FIT },

	{ 0,            XK_a,             i_toggle_antialias,   None },
	{ 0,            XK_A,             i_toggle_alpha,       None },
	{ 0,            XK_s,             i_slideshow,          None },
};

/* mouse button mappings for image mode: */
static const button_t buttons[] = {
	/* modifiers    button            function              argument */
	{ 0,            1,                i_cursor_navigate,    None },
	{ 0,            2,                i_drag,               DRAG_ABSOLUTE },
	{ 0,            3,                g_switch_mode,        None },
	{ 0,            4,                g_zoom,               +1 },
	{ 0,            5,                g_zoom,               -1 },
};

#endif
