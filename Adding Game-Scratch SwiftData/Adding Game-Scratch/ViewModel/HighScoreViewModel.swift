import CoreData
import Foundation
import SwiftData

class HighScoreViewModel: ObservableObject {

    var modelContext: ModelContext

    @Published var highScores: [HighScoreEntity] = []

    var minHighScore: Int64? {
        return highScores.last?.score
    }

    let MAX_NUM_HIGHSCORES = 100

    init(modelContext: ModelContext) {
        self.modelContext = modelContext
        fetchHighScores()
    }

    //    init() {
    //        self.container = NSPersistentContainer(name: "HighScoresDataModel")
    //
    //        // Load the data
    //        container
    //            .loadPersistentStores { description, error in
    //                if let error {
    //                    print("Loading error: \(error.localizedDescription)")
    //                } else {
    //                    print("LOADING SUCCESSFUL")
    //                }
    //            }

    // Fetch data into highScores
    //        fetchHighScores()
    //    }

    func isNewHighScore(score: Int) -> Bool {
        if score <= 0 {
            return false
        } else if let minHighScore {
            return minHighScore < score
                || highScores.count <= MAX_NUM_HIGHSCORES
        } else {
            return true
        }
    }

    func fetchHighScores() {
        //        let request = NSFetchRequest<HighScoreEntity>(
        //            entityName: "HighScoreEntity")
        //        let sortDescriptor = NSSortDescriptor(
        //            keyPath: \HighScoreEntity.score, ascending: false)
        //        request.sortDescriptors = [sortDescriptor]

        //        do {
        //            highScores =
        //                try container
        //                .viewContext
        //                .fetch(request)
        //        } catch let error {
        //            print("Error fetching high scores: \(error.localizedDescription)")
        //        }
        do {
            let descriptor = FetchDescriptor<HighScoreEntity>(sortBy: [
                SortDescriptor(\.score)
            ])
            highScores = try modelContext.fetch(descriptor)
        } catch {
            print("Fetch failed")
        }

    }

    func saveHighScore() {
        do {
            try modelContext.save()
            fetchHighScores()
        } catch let error {
            print("Error saving high scores: \(error.localizedDescription)")
        }
    }

    func addHighScore(name: String, score: Int64) {
        let entity = HighScoreEntity(name: name, score: score)
        modelContext.insert(entity)
        saveHighScore()
    }

    func updateHighScore(entity: HighScoreEntity, name: String) {
        entity.name = name
        saveHighScore()
    }

    func deleteHighScore(entity: HighScoreEntity) {
        modelContext.delete(entity)
        saveHighScore()
    }

    func deleteScore(indexSet: IndexSet) {
        guard let index = indexSet.first else { return }
        let entity = highScores[index]
        deleteHighScore(entity: entity)
    }
}
