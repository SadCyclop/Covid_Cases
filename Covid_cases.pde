Table table;
int x, y;

ArrayList<Cases> cases = new ArrayList<Cases>();
void setup(){

  size(1920,1080);
  background(0);
  table = loadTable ("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");

showData();
}

void showData(){
  float y = 15;
  int number = 0;
  for(TableRow r: table.rows()){
    String s = r.getString ("state");
    int i = r.getInt("cases");

    int tal = (i/3000);
    if(tal < 5){
      fill(255,0,0);
      rect(500,y,x,10);
      tal=4;
    }
    
    cases.add(new Cases(250,y,tal,10));
    number++;
    y+= 15;
    
    fill(255);
    text(s,25,y-5);
    text(i,x+150,y-7);
}

for(Cases c : cases){
if(c!=null)
c.display();
}
}
