=begin
Group the elements of a set into disjoint subsets.
    a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities.

    Example:

    scala> group3(List("Aldo", "Beat", "Carla", "David", "Evi", "Flip", "Gary", "Hugo", "Ida"))
    res0: List[List[List[String]]] = List(List(List(Aldo, Beat), List(Carla, David, Evi), List(Flip, Gary, Hugo, Ida)), ...

    b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.

    Example:

    scala> group(List(2, 2, 5), List("Aldo", "Beat", "Carla", "David", "Evi", "Flip", "Gary", "Hugo", "Ida"))
    res0: List[List[List[String]]] = List(List(List(Aldo, Beat), List(Carla, David), List(Evi, Flip, Gary, Hugo, Ida)), ...

    Note that we do not want permutations of the group members; i.e. ((Aldo, Beat), ...) is the same solution as ((Beat, Aldo), ...). However, we make a difference between ((Aldo, Beat), (Carla, David), ...) and ((Carla, David), (Aldo, Beat), ...).

    You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".
=end
class Array
  def group(*groupings)
    return [[]] if groupings.empty?
    head, *tail = groupings
    self.combination(head).flat_map {|combo| (self - combo).group(*tail).map {|grouping| grouping.unshift combo}}
  end
end

%w{Aldo Beat Carla David Evi Flip Gary Hugo Ida}.group(2,3,4).each {|grouping| puts "#{grouping}"}

