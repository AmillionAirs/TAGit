load("render.star", "render")
load("http.star", "http")


def main():

    return render.Root(
        child = render.Column(
            
            children =[

                render.Marquee(
                    width=64,
                        child=render.Text(" BTC 4%      ETH 5%      CRV 7%", font="tb-8"),
                    offset_start=1,
                    offset_end=1,
                ),

                render.Marquee(
                    width=64,
                        child=render.Text("$135.68    $123.98    $343.98", font="tb-8"),
                    offset_start=1,
                    offset_end=1,
                ),

                render.Marquee(
                    width=64,
                        child=render.Text(" BTC 4%      ETH 5%      CRV 7%", font="tb-8"),
                    offset_start=1,
                    offset_end=1,
                ),

                render.Marquee(
                    width=64,
                        child=render.Text("$135.68    $123.98    $343.98", font="tb-8"),
                    offset_start=1,
                    offset_end=1,
                ),
            ],
        ),
    )