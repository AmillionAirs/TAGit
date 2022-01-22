load("render.star", "render")
load("http.star", "http")


def main():

    return render.Root(
        child = render.Column(
            
            children =[

                render.Marquee(
                    width=64,
                        child=render.Text("test test test test test test test test", font="tb-8"),
                    offset_start=5,
                    offset_end=32,
                ),

                render.Marquee(
                    width=64,
                        child=render.Text("test test test test test test test test"),
                    offset_start=5,
                    offset_end=32,
                ),
            ],
        ),
    )