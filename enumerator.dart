enum Day { sunday, monday, thursday }

void main() {
  print(Day.values);
  print(Day.values[1]);
  print(Day.values.byName("sunday"));
}