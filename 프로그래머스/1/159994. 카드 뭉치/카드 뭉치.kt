class Solution {
    fun solution(cards1: Array<String>, cards2: Array<String>, goal: Array<String>): String {
        val cardList1 = cards1.toMutableList()
        val cardList2 = cards2.toMutableList()
        val wordList = mutableListOf<String>()

        for (word in goal) {
            if(cardList1.isNotEmpty() && word == cardList1.first()) {
                wordList.add(cardList1.first())
                cardList1.removeFirst()
            }

            if (cardList2.isNotEmpty() && word == cardList2.first()) {
                wordList.add(cardList2.first())
                cardList2.removeFirst()
            }
        }
        
        return if(goal.size == wordList.size) "Yes" else "No"
    }
}