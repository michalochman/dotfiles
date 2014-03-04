dm migrate
dt livechat
dt
dms
dt
dt markets
dt markets.MarketViewsTestCase
dt markets.MarketViewsTestCase.test_so_far_expression_update_correct_market_hashes
dt
git reset --hard
dms
dt migrate
dm migrate
dt markets.MarketTestCase
dt markets.MarketTestCase.test_get_so_far_expression_equation
dt
sh ../scripts/deploy.sh dev
dm migrate
dt
git changelog-bitbucket grand-parade starspread-backend > ../CHANGELOG.md
v ../CHANGELOG.md 
git commit -a
git push origin 
git push origin release/v0.7.0 
l
git checkout develop
git pull
git checkout master
git checkout release/v0.
git checkout release/v0.7.0 
git pull
git checkout master
git merge --no-ff release/v0.7.0 
git tag -a v0.7.0
git push origin master 
git push --tags
git checkout develop
git merge --no-ff release/v0.7.0 
git push origin develop 
..
compass w
compass clean
compass w
dt
cd app/
dt
dt markets
dt
dt search
dt
dms
dt markets.MarketsApiViewsTestCase
sh ../scripts/deploy.sh 
sh ../scripts/deploy.sh dev
dt
dm schemamigration markets --auto
dm migrate
dt
dt markets
dt markets.MarketTestCase
dt markets.MarketTestCase.test_can_place_or_close_bet_on_returns_false_if_event_is_unpublished
dt markets.MarketTestCase
dt sports
dt
dt transactions
dt transactions.TakeAChatViewTests
dt transactions
dt transactions.TakeAChatViewTests
dt transactions.TakeAChatViewTests.test_should_preview_bet_offer
dt transactions.TakeABetViewTests
dt transactions.TakeAChatViewTests
dt
dms
dt
..
compass clean
compass w
dt
cd app/
dt
sh ../scripts/deploy.sh dev
dms
git commit --amend
sh ../scripts/deploy.sh dev
..
compass w
compass clean
compass w
cd app/
dt
cd ..
compass compile
compass clean
compass compile
cd app/
dt
sh ../scripts/deploy.sh dev
..
compass w
cd app/
sh ../scripts/deploy.sh dev
dm migrate
dt
dt markets
d
dt
dm schemamigration markets --auto
dm migrate
dm migrate markets 0010
dm migrate markets 0011
dt
dm migrate
dt
dt markets
dt sports
dt sports.SettleCompetitionViewTestCase
dt sports
dt sports.CompetitionStatusView
dt sports
dt sports.CompetitionManageViewTestCase
dt sports
dt sports.CompetitionManageViewSortedEventsTestCase
dt sports
dt markets
dt markets.MarketViewsTestCase
dt markets
dt markets.MarketTestCase
dt markets.MarketTestCase.test_can_place_or_close_bet_on_returns_true_if_all_constraints_pass
dt markets
dt markets.MarketGroupingViewsTestCase
dt markets.MarketGroupingTestCase
dt markets
dt transactions
dt transactions.TakeAChatViewTests
dt transactions
dt
..
compass w
compass clea
compass w
dms
cd app/
dms
dt
dms
dt
dt transactions
dt transactions.BetTest
dt transactions.BetTest.test__calculate_funds_locked_returns_worst_case_part_of_available_funds_for_status_open
dt
dms
dt transactions.SettleBetFormTestCase
dt.
dt transactions.SettleBetViewTestCase
dt
git status
dm schemamigration sports --auto
dm migrate
dms
dt sport.SportTest
dt sport.SportTestCase
dt sports.SportTestCase
dt sports.SportPublishUnpublishViewTestCase
dt sports.PublishUnpublishSportView
dt sports.PublishUnpublishSportViewTestCase
dt
dt sport
dt sports
dt
dt sports
dt sports.S
dt sports.SportManagerTestCase
dt sports.S
dt sports.SportManagerTestCase
dt
dtc
git commit --amend
dm migrate
dms
dt
sh ../scripts/deploy.sh dev
dms
dt markets
dms
dt markets
dt markets.MarketViewsTestCase
dt
dt markets
dt markets.MarketTestCase
dt markets.MarketTestCase.test__untangle_so_far_expression_with_markets
dt markets.MarketTestCase
dt markets.MarketTestCase.test__untangle_so_far_expression_with_markets
dt
dtc
pip freeze | grep -i django
vim push/node_settings_local.js
sh ../scripts/deploy.sh dev
dms
dt markets.MarketTestCase
dt
dm runserver 8001
workon starspread-website
dm runserver 8001
workon starspread-website
dt
..
compass clean
compass compile
compass w
sh scripts/deploy.sh dev
dt
cd app/
dt
..
compass clean
compass w
cd app/
sh ../scripts/deploy.sh dev
dms
cd ..
compass clean
compass compile
cd app/
sh ../scripts/deploy.sh dev
dt
..
compass clea
compass w
compass clea
compass w
cd app/
dt
dm schemamigration sports --auto
dt sports.SportPublishUnpublishViewTestCase
sh ../scripts/deploy.sh dev
dm migrate
sh ../scripts/deploy.sh dev
pm2 logs
pm2 list
cd push/
pm2 start push.js -i 1
cd push/
pm2 start push.js -i 1
cd push/
pm2 start push.js -i 1
pm2 list
cd push/
pm2 start push.js -i 1
pm2 list
pm2 start push.js -i 1
pm2 list
pm2 start push.js -i 1 -f
pm2 list
kill -9 2744
kill -9 2842
pm2 start push.js -i 1 -f
pm2 list
kill -9 2920
pm2 list
pm2 kill 2920
pm2 list
pm2 start push.js -i 1
pm2 list
cd
cd  Desktop/
l
python test
python test.py 
rm test
rm test.py 
cd ~/Projects/starspread-backend/app/
workon starspread-website
deactivate 
workon starspread-backend
dm runserver
workon starspread-backend
dms
dm schemamigration markets --auto
l
c
l
dms
dm migrate
dms
dt
dt transactions.BetTest
dt transactions.BetOpenTestCase
dms
dt transactions.BetOpenTestCase
dt transactions.BetOpenTestCase.test_open_partially_closes_bets_if_opposite_bet_placed_and_bets_found_with_higher_stake
dt transactions.BetOpenTestCase
dt
dt transactions
dt transactions.TakeABetViewTests
dm migrate
dt transactions
dt transactions.TakeABetViewTests
dt
dt transactions.BetOpenTestCase
dt transactions
dt transactions.BetTest
dt transactions
dt transactions.BetTest
dt transactions.BetTest.test_close_uses_closing_price_if_specified
dt transactions.BetTest
dt
dms
dt
dm schemamigration transactions --auto
dm migrate
dt transactions.BetOpenTestCase
dm migrate transactions 0015
dm schemamigration transactions --auto
dm migrate
dm migrate transactions 0015
dm schemamigration transactions --auto
dm migrate
dt transactions.BetOpenTestCase
dt
dt transactions
dt transactions.BetOpenTestCase
dt transactions
dt transactions.TakeABetViewTests
dt transactions.TakeABetViewTests.test_post_should_confirm_a_bet
dt transactions.TakeABetViewTests
dt transactions
dt
cd ~/Projects/starspread-website/app/
workon starspread-website
dm runserver 8001
..
compass w
pm2 start push/push.js -i 1
pm2 list
pm2 start push/push.js -i 1
brew list
git reset --soft HEAD^1
dm migrate
ssh gpadmin@192.168.2.107 -A
workon starspread-backend
dms
workon starspread-backend
dt transactions.BetTest
workon starspread-backend
dm schemamigration transactions --auto
dm migrate
dt
dms
dt
dt transactions
git reset --soft HEAD^1
dm migrate
dm migrate sports 0013
dm migrate
dm migrate sports 0013
dm migrate sports 0014
dm migrate sports 0013
dm migrate sports 0015
dm migrate sports 0013
dm migrate markets 0099
dm migrate
dm migrate markets 0013
dm migrate markets 0014
dm migrate markets 0014 --fake
dm migrate markets 0013
dm migrate markets 0014
dm migrate markets 0014 --fake
dm migrate markets 0013
dm migrate markets 0014
rmpyc 
dm migrate markets 0013
dm migrate markets 0013 --delete-ghost-migrations
dm migrate markets 0014
dm migrate markets 0014 --fake
dm migrate markets 0013
dm migrate markets 0014
dm migrate markets 0014 --fake
dm migrate
dt
dm migrate sports 0014 --fake
dm migrate sports 0013
rmpyc 
ssh ss-dev-backend 
ssh ss-dev-backend -N
dms
dt
dt transactions.TakeAChatViewTests.test_should_preview_bet_offer
dt transactions
dt transactions.BetsViewSetTestCase
dt transactions.BetsViewSetTestCase.test_cancel_bet
dt transactions
dt transactions.BetTest
dt transactions
dt
date
dt transactions.BetTest
dtc
dtc utils
dtc
dt
dt transactions
dt transactions.BetTest
dt transactions.BetTest.test_get_expected_profit_with_win_or_lose
dt transactions.BetTest
dt transactions.BetTest.test_worst_case_part_of_available_funds_returns_worst_case_times_bet_stake_minus_opposite
dt transactions.BetTest
dt transactions.BetTest.test_calculate_funds_already_locked
dt transactions.BetTest
dt transactions.BetTest.test_calculate_funds_available_without_closure
dt transactions.BetTest.test_calculate_funds_available_with_closure
dt translate
dt transactions
dt
workon starspread-backend
cd ~/Projects/starspread-backend/app/
dm runserver
killall python
dm runserver
killall python
dm runserver
pip install -r requirements-dev.txt 
dm runserver
workon starspread-website
cd ~/Projects/starspread-website/app/
dm runserver 8001
pm2
pm2 list
cd ~/Projects/starspread-website/app/
workon starspread-website
dm runserver 8001
cd ~/Projects/starspread-backend/app/
workon starspread-backend
dm runserver
ping google.com
pm2
pm2 list
pm2 start push/push.js -i 1
pm2 start push/push.js -i 1
pm2 kill16104
pm2 kill 16104
pm2 list
pm2 start push/push.js -i 1
workon starspread-backend
cd ~/Projects/starspread-backend/app/
dm runserver
workon starspread-website
cd ~/Projects/starspread-website/app/
dm runserver 8001
ping google.com
traceroute google.com
man traceroute
v ~/.ssh/config 
traceroute google.com
ping blog.scur.pl
mysql -h37.59.1.117 -ucomplex_ro -p
mysql -h37.59.1.117 -ucomplex_ro -p -D scur_mgr
mysql -h37.59.1.117 -uroot -p
mysql -h37.59.1.117 -ucomplex_ro
mysql -h37.59.1.117 -ucomplex_ro -p
mysql -h37.59.1.117 -ucomplex_ro -p -Dscur_mgr
ssh blog.scur.pl 
ssh blog.scur.pl -l scur
traceroute amazon.com
traceroute dupa.com
df
df -h
cd /Volumes/SEAGATE/
ll
ll .untitled\ folder/
mv .untitled\ folder/ asd
mv .x x
ll
mv .tmp tmp
ll
rm ._Dexter.S08E05.720p.HDTV.x264-IMMERSE.*
rm ._Robert_Plant-Band_of_Joy-CD-FLAC-2010-FORSAKEN 
rm ._rFactorSetup1255g.exe 
rm ._setup_updater_1_40.exe 
ll
cd /Volumes/SEAGATE/
l
mv tmp/ .tmp
l
ll
lsd
ip
localip 
ips
ipconfig getifaddr
ifconfig 
localip 
md5sum 
history 
httpdump 
sudo tcpdump -i en0 -n -s 0 -w -
sniff
ifconfig 
sniff 
brew search ngrep
brew install ngrep
