//Soccer League Project
//Andros C.W. Slowley
//August 4th 2016

//Purpose: To seperate list of experienced players from non-experienced players and generate a specific letter per player to respective parent

//List of Players As Provided
var players = [("Jill Tanner", "Yes", "Clara Tanner", 36),
               ("Joe Smith", "Yes", "Jim and Jan Smith", 42),
               ("Bill Bon", "Yes", "Sara and Jenny Bon", 43),
               ("Eva Gordon", "No", "Wenday and Mike Gordon", 45),
               ("Matt Gill", "No", "Charles and Sylvia Gill", 40),
               ("Kimmy Stein", "No", "Bill and Hillary Stein", 41),
               ("Sammy Adams", "No", "Jeff Adams", 45),
               ("Karl Saygam", "Yes", "Heather Bledsoe", 42),
               ("Suzane Greenberg", "Yes", "Henrietta Dumas", 44),
               ("Sal Dali", "No", "Gala Dali", 41),
               ("Joe Kavalier", "No", "Sam and Elaine Kavalier", 39),
               ("Ben Finkeistein", "No", "Aaron and Jill Finkeistein", 44),
               ("Diego Soto", "Yes", "Robin and Sarika Soto", 41),
               ("Chloe Alaska", "No", "David and Jamie Alaska", 47),
               ("Arnold Willis", "No", "Claire Willis", 43),
               ("Philip Helm", "Yes", "Thomas Helm and Eva Jones", 44),
               ("Les Clay", "Yes", "Wynonna Brown", 42),
               ("Herschel Krustofski", "Yes", "Hyman and Rachel Krustofski", 45)]


//Separation of experienced players
func experienceTeamYes(availablePlayers: [(String, String, String, Int)]) -> [(String, String, String, Int)]{
    
    var yes: [(String, String, String, Int)] = [(" ", " ", " ", 0)]
    yes.removeAtIndex(0)
    
    for n in 0..<players.count {
        
        switch "Yes" {
            
        case players[n].1: yes.append(players[n])
            
        default: "N/A"
            
        }
        
    }
    
    return yes
}

//Separation of non-experienced players
func experienceTeamNo(availablePlayers: [(String, String, String, Int)]) -> [(String, String, String, Int)]{
    
    var no: [(String, String, String, Int)] = [(" ", " ", " ", 0)]
    no.removeAtIndex(0)
    
    for n in 0..<players.count {
        
        switch "No" {
            
        case players[n].1: no.append(players[n])
            
        default: "N/A"
            
        }
        
        
    }
    return no
}

//Placement of both experienced and non-experience players to Team Dragon
func dragons(freeAgents: [(String, String, String, Int)]) -> [(String, String, String, Int)] {
    var teamYes = experienceTeamYes(freeAgents)
    var teamNo = experienceTeamNo(freeAgents)
    var dragons1: [(String, String, String, Int)] = [(" ", " ", " ", 0)]
    dragons1.removeAtIndex(0)
    var dragons2: [(String, String, String, Int)] = [(" ", " ", " ", 0)]
    dragons2.removeAtIndex(0)
    let firstHalfOfTeam = ((freeAgents.count)/3)/2
    
    
    
    for n in 0..<firstHalfOfTeam {
        
        switch "Yes" {
            
        case teamYes[n].1:  dragons1.append(teamYes[n])
            
        default: "N/A"
            
        }}
    
    for n in 0..<firstHalfOfTeam {
        
        switch "No" {
            
        case teamNo[n].1:  dragons2.append(teamNo[n])
            
        default: "N/A"
            
        }
        
    }
    
    
    ; let dragon = dragons1 + dragons2
    
    return dragon}

//Placement of both experienced and non-experience players to Team Sharks
func sharks(freeAgents: [(String, String, String, Int)]) -> [(String, String, String, Int)] {
    var teamYes = experienceTeamYes(freeAgents)
    var teamNo = experienceTeamNo(freeAgents)
    var sharks1: [(String, String, String, Int)] = [(" ", " ", " ", 0)]
    sharks1.removeAtIndex(0)
    var sharks2: [(String, String, String, Int)] = [(" ", " ", " ", 0)]
    sharks2.removeAtIndex(0)
    let firstHalfOfTeam = ((freeAgents.count)/3)/2
    let secondHalfOfTeam = firstHalfOfTeam * 2
    
    
    for n in firstHalfOfTeam..<secondHalfOfTeam {
        
        switch "Yes" {
            
        case teamYes[n].1:  sharks1.append(teamYes[n])
            
        default: "N/A"
            
        }}
    
    for n in firstHalfOfTeam..<secondHalfOfTeam {
        
        switch "No" {
            
        case teamNo[n].1:  sharks2.append(teamNo[n])
            
        default: "N/A"
            
        }
        
        
    }
    
    let sharks = sharks1 + sharks2
    return sharks}


//Placement of both experienced and non-experience players to Team Raptors
func raptors(freeAgents: [(String, String, String, Int)]) -> [(String, String, String, Int)] {
    var teamYes = experienceTeamYes(freeAgents)
    var teamNo = experienceTeamNo(freeAgents)
    var raptors1: [(String, String, String, Int)] = [(" ", " ", " ", 0)]
    raptors1.removeAtIndex(0)
    var raptors2: [(String, String, String, Int)] = [(" ", " ", " ", 0)]
    raptors2.removeAtIndex(0)
    let firstHalfOfTeam = ((freeAgents.count)/3)/2
    let secondHalfOfTeam = firstHalfOfTeam * 2
    let finalHalf = (freeAgents.count)/2
    
    for n in secondHalfOfTeam..<finalHalf {
        
        switch "Yes" {
            
        case teamYes[n].1:  raptors1.append(teamYes[n])
            
        default: "N/A"
            
        }}
    
    for n in secondHalfOfTeam..<finalHalf {
        
        switch "No" {
            
        case teamNo[n].1:  raptors2.append(teamNo[n])
            
        default: "N/A"
            
        }
        
    }
    let raptors = raptors1 + raptors2
    return raptors}

//Function that allows user to type players name and generate letter to the respective parent
func letterToParents(player player: String) -> String {
    var letter: String = ""
    for n in 0..<players.count/3 {
   
        switch raptors(players)[n].0 {
        case player: letter = "Congratulations \(raptors(players)[n].2) your child \(raptors(players)[n].0) has been accepted to Team Raptors. Be prepared for your first practice which be held on March 18 at 1 pm. See You Soon!!!"
        default: "N/A"
        
        switch dragons(players)[n].0 {
        case player: letter = "Congratulations \(dragons(players)[n].2) your child \(dragons(players)[n].0) has been accepted to Team Dragons. Be prepared for your first practice which be held on March 17 at 1 pm. See You Soon!!!"
        default: "N/A"}
            
        switch sharks(players)[n].0 {
        case player: letter = "Congratulations \(sharks(players)[n].2) your child \(sharks(players)[n].0) has been accepted to Team Sharks. Be prepared for your first practice which be held on March 17 at 3 pm. See You Soon!!!"
        default: "N/A"}
    }

}

return letter}

let noticeLetter = letterToParents(player: "Jill Tanner")

print(noticeLetter)

