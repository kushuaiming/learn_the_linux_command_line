# FN(Font Space)
echo "111|222|333" | awk '{print $1}'
# 111|222|333
echo "111|222|333" | awk 'BEGIN{FS="|"}{print $1}'
# 111

# OFS(Output Font Space)
echo "111 222 333" |awk 'BEGIN{OFS="|";}{print $1,$2,$3}'
# 111|222|333

# RS(Row Space)
echo "111 222|333 444|555 666" | awk 'BEGIN{RS="|"}{print $0}'
# 111 222
# 333 444
# 555 666

# ORS(Output Row Space)
awk 'BEGIN{ORS="|";}{print $0;}' test.txt
# 111 222|333 444|555 666