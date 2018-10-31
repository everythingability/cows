Table table;
PFont font;

void setupcows(){
 table = loadTable("food.csv", "header");
  println(table.getRowCount() + " total rows in table"); 
  font = createFont("OpenSans-ExtraBold.ttf", 30);
  textFont(font);
}

void drawcows(){
  int i = 10;
  for (TableRow row : table.rows()) {
    
    int additives = row.getInt("additives_n");
     int fat = row.getInt("fat_100g") * 3;
    String name = row.getString("product_name");
    String image_small_url = row.getString("image_small_url");
    PImage cowimage = loadImage( image_small_url);
    
    int y = int(map(additives, 0, 6, 0, height));
   
    image(cowimage, i, y, fat, fat);
    fill(#FA12AD);
    textSize(fat);
    text(name, i, y+50);
    i += 40;
    println(name, y );
  }
  
}
  

 
