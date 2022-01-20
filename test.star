load("render.star", "render")
load("http.star", "http")
load("encoding/json.star", "json")

URL = "https://svc.metrotransit.org/NexTrip/51408?format=json"

def main():  

     MTT = http.get(URL).json()

     if MTT[0]["Route"] == "Blue":
          CB = "#00a"

          if MTT[0]["Description"] == "to Mpls-Target Field":
               DB = "MTF"
          else:      
               DB = "MOA"     

     else:
          CB = "#0a0"

          if MTT[0]["Description"] == "to Mpls-Target Field":
               DB = "MTF"
          else:      
               DB = "STP"



     if MTT[1]["Route"] == "Blue":
          CB2 = "#00a"

          if MTT[1]["Description"] == "to Mpls-Target Field":
               DB2 = "MTF"
          else:      
               DB2 = "MOA"     

     else:
          CB2 = "#0a0"

          if MTT[1]["Description"] == "to Mpls-Target Field":
               DB2 = "MTF"
          else:      
               DB2 = "STP"



     return render.Root(
        child = render.Column(
                children = [
                    render.Marquee(

                    width=64,
                         child = render.Text("NICOLLET MALL STATION"),
                   
                    offset_start=5,
                    offset_end=5,
                    ),
                    render.Box(width=64, height=1),
                    render.Box(width=64, height=1, color="#a00"),
                    render.Row(     
                         children=[
                                render.Stack(
                                    children=[
                                        render.Box(width=12, height=10, color=CB),
                                        render.Text(DB, font="tom-thumb"),
                                    ],
                                ),
                                render.Box(width=6, height=10),
                                render.Text(MTT[0]["DepartureText"], font="Dina_r400-6"),
                         ],
                    ),
                    render.Box(width=64, height=1, color="#a00"),
                    render.Row(
                         children=[
                             render.Stack(
                                 children=[
                                    render.Box(width=12, height=10, color=CB2),
                                    render.Text(DB2, font="tom-thumb"),
                                 ],
                             ),
                              render.Box(width=6, height=10),
                              render.Text(MTT[1]["DepartureText"], font="Dina_r400-6"),
                         ],
                    ),
                    render.Box(width=64, height=1, color="#a00"),
               ],
          ),            
     )
