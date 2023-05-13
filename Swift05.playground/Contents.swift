import UIKit



protocol Player {
    func play()
}

protocol Coach {
    func coach()
}


class Football: Player {
    var name: String = "Mohammed"
    var team: String = "ALHilal FC"
    var players: [Player]
    
    init(name: String, team: String, players: [Player]) {
         self.name = name
         self.team = team
         self.players = players
     }
     
    
    func play() {
        print("The \(name) football team is playing!")
    }
} // ----> 1

class FotballTeams: Football{
    var teamRank: Int = 1
    var teamPlayer: Int = 25
    
    func fotballTeams(){
        print("Team Rank is \(teamRank) and the players number is \(teamPlayer)")
    }
} // ----> 2

class Manager: Player {
    var numOfManager: Int = 4
    let numOfSection = 10
    
    func play() {
        print("the number of manger in one club is \(numOfManager) in \(numOfSection) section")
    }
} // ----> 3



class FootballPlayers: Coach {
    var name: String
    var position: String
    var jerseyNumber: Int
    
    init(name: String, position: String, jerseyNumber: Int) {
        self.name = name
        self.position = position
        self.jerseyNumber = jerseyNumber
    }
    
    func coach() {
        print("The \(name) player is coaching the team!")
    }
} // ----> 4

class league: FootballPlayers{
    var numOfTitle: Int = 67
    
    func NumOFTitle (){
        print("number of all title is \(numOfTitle)")
    }
} // ----> 5

class NumberOfLeague: FootballPlayers {
    
    var numberOfLeague: Int = 5
    
    func NumberLeagueForEachPlayer(){
        print("the number of league for each player in ALHilal FC is \(numberOfLeague)")
    }
} // ----> 6

class JerseyInMatch: FootballPlayers{
    var jerseyPerMatch: Int = 3
    
    func jerseyShirt(){
        print("number of the jersey shirt per game for each player \(jerseyPerMatch)")
    }
} // ----> 7

class CoachTeam: Coach {
    func coach() {
        print("The coach is coaching the team!")
    }
} // ----> 8 Abstract Class


class Stadium: Player {
    var name: String
    var capacity: Int
    
    init(name: String, capacity: Int) {
        self.name = name
        self.capacity = capacity
    }
    
    func play() {
        print("The \(name) stadium is hosting a football game!")
    }
} // ----> 9

class Old: Stadium{
    let allStadium: Int = 19
    
    func OldStadium () {
        print("All staduim is \(allStadium)")
    }
} // ----> 10

class City: Stadium{
    
    var cities: Int = 23
    struct Location {
        var city: String
        var state: String
    }

    var stadiumLocation: Location = Location(city: "Riyadh", state: "Central")

    func cityBall(){
        print("number of cities playes football in one time \(cities)")
    }
} // ----> 11

class CityStaduim: Stadium{
    var staduimInOneCity: Int = 4
    
    func CityStaduim(){
        print("number of staduim in one city \(staduimInOneCity)")
    }
} // ----> 12
class Fan: Coach {
    var name: String
    var favoriteTeam: String
    
    init(name: String, favoriteTeam: String) {
        self.name = name
        self.favoriteTeam = favoriteTeam
    }
    
    func coach() {
        print("The \(name) fan is cheering on their favorite team!")
    }
} // ----> 13

class HilalFan: Fan{
    var hilalFan: Int = 2000
} // ----> 14
class IitiFan: Fan{
    var IitiFan: Int = 2000
} // ----> 15
class ShababFan: Fan{
    var ShababFan: Int = 2000
} // ----> 16
class NasserFan: Fan{
    var NasserFan: Int = 2000
} // ----> 17
class AhlyFan: Fan{
    var AhlyFan: Int = 2000
} // ----> 18

class Fans: Coach {
    func coach() {
        print("The manager is coaching the team!")
    }
} // ----> 19 Abstract Class


class Referee: Player {
    var name: String
    var yearsOfExperience: Int
    
    init(name: String, yearsOfExperience: Int) {
        self.name = name
        self.yearsOfExperience = yearsOfExperience
    }
    
    func play() {
        print("The \(name) referee is officiating a football game!")
    }
} // ----> 20

class RefMatch: Referee{
    var refInOneMatch: Int = 5
    
    func RefInMatch(){
        print("Number of referee in one match is \(refInOneMatch)")
    }
} // ----> 21

class RefNational: Referee{
    var nationality: String = "Saudi"
    
    func RefNationalty(){
        print("the most commont nationlty is \(nationality)")
    }
} // ----> 22

class FieldRef: Referee{
    var fieldRef: Int = 3
    
    func FeildRef(){
        print("Number of referee in the feild \(fieldRef)")
    }
} // ----> 23

class RefHight: Referee{
    var height: Float = 6.0
    
    enum Position {
        case RB
        case LB
        case CB
        case CM
        case CDM
        case CAM
        case ST
        case RW
    }
} // ----> 24

class WeiteRef: Referee{
    var weight: Double = 200.0
    var stats: [String: Int] = ["GOALS": 400, "ASSISTE": 100, "FOULS": 50]
} // ----> 25

class AgeRef: Referee{
    var ageRef: Int = 33
    var aveAge: Int = 29
    
    func AveAge(){
        print("the avarge age for referee is \(ageRef)")
    }
} // ----> 26

class RefJersey: Referee{
    var colorOfJersey: String = "Black"
} // ----> 27

class RefShort: Referee{
    var RefShortColor: String = "Black"
} // ----> 28

class RefMistake: Referee{
    var mistakes: Int = 4
} // ----> 29

class Ref: Coach {
    func coach() {
        print("The manager is coaching the team!")
    }
} // ----> 30



// Swift Keywords
let keywords = ["let", "var", "if", "else", "while", "for", "switch", "case", "default", "return", "func", "class", "struct", "enum", "protocol", "extension", "deinit", "init", "subscript", "typealias"]
