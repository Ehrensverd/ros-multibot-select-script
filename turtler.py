import sys
if sys.argv[1] in ['burger', 'waffle', 'waffle_pi']:
        with open('.current_turtle','w') as file:
                file.write(sys.argv[1])
else:
        print('error')