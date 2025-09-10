##
 # check.mcfunction
 # 
 #
 # Created by .
##

tag @s remove check
data remove storage temp data.check

$data modify storage temp data.check set from storage temp data."$(UUID)"

function lzenl:rc/set_item_off with storage temp data.check.slotoff
function lzenl:rc/set_item with storage temp data.check.slot0
function lzenl:rc/set_item with storage temp data.check.slot1
function lzenl:rc/set_item with storage temp data.check.slot2
function lzenl:rc/set_item with storage temp data.check.slot3
function lzenl:rc/set_item with storage temp data.check.slot4
function lzenl:rc/set_item with storage temp data.check.slot5
function lzenl:rc/set_item with storage temp data.check.slot6
function lzenl:rc/set_item with storage temp data.check.slot7
function lzenl:rc/set_item with storage temp data.check.slot8



data remove storage temp data.check
$data remove storage temp data."$(UUID)"

