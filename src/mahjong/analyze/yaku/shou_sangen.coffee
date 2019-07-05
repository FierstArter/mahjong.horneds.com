# SHOU SANGEN (Little Three Dragons)
# ----------------------------------
# Hand with two dragon pungs/kongs and a pair of dragons. Add one fan for each
# of the individual dragon pungs.
#
module.exports =
    name: 'shou sangen'
    exclude: ['tanyao', 'pinfu', 'junchan',  'ryanpeikou', 'sanshoku', 'itsu', 'chinitsu', 'chitoitsu', 'sanshoku dokou']
    test: ({ hand }) ->
        return unless hand.pair.suit == 'd'
        sets = (set for set in hand.sets when set.suit == 'd')
        return if sets.length < 2
        return 2
