import naylib64

const
    screenWidth  = 320
    screenHeight = 240

var flag = true

proc updateController(): void
proc initApp(): bool = true
proc finishApp(): void


InitWindow(screenWidth, screenHeight, "naylib64 [shapes] example - basic shapes")

var rotation : float = 0.0

SetTargetFPS(30)
#----------------------------------------------------------

# Main game loop
while flag:
    # Update
    updateController()

    rotation += 0.2f

    # Draw
    BeginDrawing()
    # { ---

    ClearBackground(RayWhite)

    DrawText("some basic shapes available on raylib", 10, 10, 10, DarkGray)

    # Circle shapes and lines
    DrawCircle(screenWidth/5, screenHeight/4, 20, DarkBlue)
    DrawCircleGradient(screenWidth/5, 55+screenHeight/4, 30, Green, SkyBlue)
    DrawCircleLines(screenWidth/5, 130+screenHeight/4, 40, DarkBlue)

    # Rectangle Shapes and lines
    DrawRectangle(screenWidth/4*2 - 35, 5+screenHeight/6, 70, 30, Red)
    DrawRectangleGradientH(screenWidth/4*2 - 50, 55+screenHeight/6, 100, 45, Maroon, Gold)
    DrawRectangleLines(screenWidth/4*2 - 20, 130+screenHeight/6, 40, 30, Orange) # NOTE: Uses QUADS internally, not lines

    # Triangle shapes and lines
    DrawTriangle(
        Vector2( 20+screenWidth/4.0 * 3.0,        40.0 ),
        Vector2( 20+screenWidth/4.0 * 3.0 - 30.0, 70.0 ),
        Vector2( 20+screenWidth/4.0 * 3.0 + 30.0, 70.0 ), Violet )

    DrawTriangleLines(
        Vector2( 20+screenWidth/4.0 * 3.0,         90.0 ),
        Vector2( 20+screenWidth/4.0 * 3.0 - 20.0, 140.0 ),
        Vector2( 20+screenWidth/4.0 * 3.0 + 20.0, 140.0 ), DarkBlue )

    # Polygon shapes and lines
    DrawPoly(        Vector2( 20+screenWidth/4.0*3, 130+screenHeight/4 ), 6, 30, rotation,    Brown )
    DrawPolyLines(   Vector2( 20+screenWidth/4.0*3, 130+screenHeight/4 ), 6, 40, rotation,    Brown )
    DrawPolyLinesEX( Vector2( 20+screenWidth/4.0*3, 130+screenHeight/4 ), 6, 35, rotation, 6, Beige )

    # NOTE: We draw all LINES based shapes together to optimize internal drawing,
    # This way, all LINES are rendered in a single draw pass.
    DrawLine( 8, 22, screenWidth - 8, 22, Black )

    # --- }
    EndDrawing()


#----------------------------------------------------------

# De-Initialization
#----------------------------------------------------------
CloseWindow() # Close window and OpenGL context
#----------------------------------------------------------

finishApp()
