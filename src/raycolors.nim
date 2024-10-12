module raycolors

type
    Color = object
        r,g,b,a: uint8

const
    LIGHTGRAY*  Color( r: 200, g: 200, b: 200, a: 255 )   // Light Gray
    GRAY*       Color( r: 130, g: 130, b: 130, a: 255 )   // Gray
    DARKGRAY*   Color( r:  80, g:  80, b:  80, a: 255 )   // Dark Gray
    YELLOW*     Color( r: 253, g: 249, b:   0, a: 255 )   // Yellow
    GOLD*       Color( r: 255, g: 203, b:   0, a: 255 )   // Gold
    ORANGE*     Color( r: 255, g: 161, b:   0, a: 255 )   // Orange
    PINK*       Color( r: 255, g: 109, b: 194, a: 255 )   // Pink
    RED*        Color( r: 230, g:  41, b:  55, a: 255 )   // Red
    MAROON*     Color( r: 190, g:  33, b:  55, a: 255 )   // Maroon
    GREEN*      Color( r:   0, g: 228, b:  48, a: 255 )   // Green
    LIME*       Color( r:   0, g: 158, b:  47, a: 255 )   // Lime
    DARKGREEN*  Color( r:   0, g: 117, b:  44, a: 255 )   // Dark Green
    SKYBLUE*    Color( r: 102, g: 191, b: 255, a: 255 )   // Sky Blue
    BLUE*       Color( r:   0, g: 121, b: 241, a: 255 )   // Blue
    DARKBLUE*   Color( r:   0, g:  82, b: 172, a: 255 )   // Dark Blue
    PURPLE*     Color( r: 200, g: 122, b: 255, a: 255 )   // Purple
    VIOLET*     Color( r: 135, g:  60, b: 190, a: 255 )   // Violet
    DARKPURPLE* Color( r: 112, g:  31, b: 126, a: 255 )   // Dark Purple
    BEIGE*      Color( r: 211, g: 176, b: 131, a: 255 )   // Beige
    BROWN*      Color( r: 127, g: 106, b:  79, a: 255 )   // Brown
    DARKBROWN*  Color( r:  76, g:  63, b:  47, a: 255 )   // Dark Brown

    WHITE*      Color( r: 255, g: 255, b: 255, a: 255 )   // White
    BLACK*      Color( r: 0,   g:   0, b:   0, a: 255 )   // Black
    BLANK*      Color( r: 0,   g:   0, b:   0, a:   0 )   // Blank (Transparent)
    MAGENTA*    Color( r: 255, g:   0, b: 255, a: 255 )   // Magenta
    RAYWHITE*   Color( r: 245, g: 245, b: 245, a: 255 )   // My own White (raylib logo)

