@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 59, capacity: 77, latency: 10, risk: 7, weight: 12)
        precondition(Policy.score(signalcase_1) == 157)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 100, capacity: 72, latency: 19, risk: 7, weight: 13)
        precondition(Policy.score(signalcase_2) == 218)
        precondition(Policy.classify(signalcase_2) == "accept")
        let signalcase_3 = Signal(demand: 67, capacity: 103, latency: 23, risk: 6, weight: 7)
        precondition(Policy.score(signalcase_3) == 169)
        precondition(Policy.classify(signalcase_3) == "review")
        let domainReview = DomainReview(signal: 42, slack: 35, drag: 9, confidence: 53)
        precondition(DomainReviewLens.score(domainReview) == 145)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
