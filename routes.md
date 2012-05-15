              solutions_show GET    /solutions/show(.:format)                          {:controller=>"solutions", :action=>"show"}
                        root        /(.:format)                                        {:controller=>"site", :action=>"index"}
                      signup        /signup(.:format)                                  {:action=>"new", :controller=>"users"}
                oauth_signup        /oauth_signup(.:format)                            {:action=>"oauth_signup", :controller=>"users"}
           oauth_user_create        /oauth_user_create(.:format)                       {:action=>"oauth_user_create", :controller=>"users"}
                 oauth_login        /oauth_login(.:format)                             {:action=>"oauth_login", :controller=>"sessions"}
        oauth_session_create        /oauth_session_create(.:format)                    {:action=>"oauth_session_create", :controller=>"sessions"}
             connect_account        /connect_account(.:format)                         {:action=>"connect_account", :controller=>"users"}
                    register        /register(.:format)                                {:action=>"create", :controller=>"users"}
                       login        /login(.:format)                                   {:action=>"new", :controller=>"sessions"}
                      logout        /logout(.:format)                                  {:action=>"destroy", :controller=>"sessions"}
              reset_password        /reset_password(.:format)                          {:action=>"reset_password", :controller=>"sessions"}
                       about        /about(.:format)                                   {:action=>"about", :controller=>"site"}
                      report        /report(.:format)                                  {:action=>"report", :controller=>"site"}
                       guide        /guide(.:format)                                   {:action=>"guide", :controller=>"site"}
                         faq        /faq(.:format)                                     {:action=>"faq", :controller=>"site"}
                      public        /public(.:format)                                  {:action=>"public", :controller=>"site"}
                  followings        /followings(.:format)                              {:action=>"followings", :controller=>"site"}
                    timeline        /timeline(.:format)                                {:action=>"timeline", :controller=>"site"}
               more_timeline        /more_timeline(.:format)                           {:action=>"more_timeline", :controller=>"site"}
        more_public_timeline        /more_public_timeline(.:format)                    {:action=>"more_public_timeline", :controller=>"site"}
                                    /oauth(/:action)(.:format)                         {:controller=>"oauth", :action=>"(/:action)"}
                        plan        /plan(/:id)(.:format)                              {:controller=>"plans", :action=>"redirect"}
                      answer        /answer(/:id)(.:format)                            {:controller=>"answers", :action=>"redirect"}
                        kase        /kase(/:id)(.:format)                              {:controller=>"kases", :action=>"show"}
                     setting        /setting(.:format)                                 {:action=>"setting", :controller=>"users"}
                      search        /search(.:format)                                  {:action=>"result", :controller=>"search"}
                 more_search        /search/more(.:format)                             {:controller=>"search", :action=>"more"}
                 tags_search        /search/tags(.:format)                             {:controller=>"search", :action=>"tags"}
                                    /standards(/:action)(.:format)                     {:controller=>"standards", :action=>"(/:action)"}
                     session POST   /session(.:format)                                 {:action=>"create", :controller=>"sessions"}
                 new_session GET    /session/new(.:format)                             {:action=>"new", :controller=>"sessions"}
                     session GET    /session(.:format)                                 {:action=>"show", :controller=>"sessions"}
                     session DELETE /session(.:format)                                 {:action=>"destroy", :controller=>"sessions"}
                        sync POST   /sync(.:format)                                    {:action=>"create", :controller=>"syncs"}
                    new_sync GET    /sync/new(.:format)                                {:action=>"new", :controller=>"syncs"}
                       chart        /chart(.:format)                                   {:action=>"show", :controller=>"chart"}
                 cover_venue GET    /venues/:id/cover(.:format)                        {:action=>"cover", :controller=>"venues"}
              position_venue GET    /venues/:id/position(.:format)                     {:action=>"position", :controller=>"venues"}
                doings_venue GET    /venues/:id/doings(.:format)                       {:action=>"doings", :controller=>"venues"}
               records_venue GET    /venues/:id/records(.:format)                      {:action=>"records", :controller=>"venues"}
                photos_venue GET    /venues/:id/photos(.:format)                       {:action=>"photos", :controller=>"venues"}
               sayings_venue GET    /venues/:id/sayings(.:format)                      {:action=>"sayings", :controller=>"venues"}
                topics_venue GET    /venues/:id/topics(.:format)                       {:action=>"topics", :controller=>"venues"}
                 tasks_venue GET    /venues/:id/tasks(.:format)                        {:action=>"tasks", :controller=>"venues"}
             followers_venue GET    /venues/:id/followers(.:format)                    {:action=>"followers", :controller=>"venues"}
            more_items_venue GET    /venues/:id/more_items(.:format)                   {:action=>"more_items", :controller=>"venues"}
              watching_venue POST   /venues/:id/watching(.:format)                     {:action=>"watching", :controller=>"venues"}
                      venues GET    /venues(.:format)                                  {:action=>"index", :controller=>"venues"}
                      venues POST   /venues(.:format)                                  {:action=>"create", :controller=>"venues"}
                   new_venue GET    /venues/new(.:format)                              {:action=>"new", :controller=>"venues"}
                  edit_venue GET    /venues/:id/edit(.:format)                         {:action=>"edit", :controller=>"venues"}
                       venue GET    /venues/:id(.:format)                              {:action=>"show", :controller=>"venues"}
                       venue PUT    /venues/:id(.:format)                              {:action=>"update", :controller=>"venues"}
                       venue DELETE /venues/:id(.:format)                              {:action=>"destroy", :controller=>"venues"}
           get_badges_badges GET    /badges/get_badges(.:format)                       {:action=>"get_badges", :controller=>"badges"}
                      badges GET    /badges(.:format)                                  {:action=>"index", :controller=>"badges"}
                      badges POST   /badges(.:format)                                  {:action=>"create", :controller=>"badges"}
                   new_badge GET    /badges/new(.:format)                              {:action=>"new", :controller=>"badges"}
                  edit_badge GET    /badges/:id/edit(.:format)                         {:action=>"edit", :controller=>"badges"}
                       badge GET    /badges/:id(.:format)                              {:action=>"show", :controller=>"badges"}
                       badge PUT    /badges/:id(.:format)                              {:action=>"update", :controller=>"badges"}
                       badge DELETE /badges/:id(.:format)                              {:action=>"destroy", :controller=>"badges"}
                  more_tasks GET    /tasks/more(.:format)                              {:action=>"more", :controller=>"tasks"}
                  close_task PUT    /tasks/:id/close(.:format)                         {:action=>"close", :controller=>"tasks"}
               progress_task GET    /tasks/:id/progress(.:format)                      {:action=>"progress", :controller=>"tasks"}
         duplicate_task_plan GET    /tasks/:task_id/plans/:id/duplicate(.:format)      {:action=>"duplicate", :controller=>"plans"}
              done_task_plan GET    /tasks/:task_id/plans/:id/done(.:format)           {:action=>"done", :controller=>"plans"}
                  task_plans GET    /tasks/:task_id/plans(.:format)                    {:action=>"index", :controller=>"plans"}
                  task_plans POST   /tasks/:task_id/plans(.:format)                    {:action=>"create", :controller=>"plans"}
               new_task_plan GET    /tasks/:task_id/plans/new(.:format)                {:action=>"new", :controller=>"plans"}
              edit_task_plan GET    /tasks/:task_id/plans/:id/edit(.:format)           {:action=>"edit", :controller=>"plans"}
                   task_plan GET    /tasks/:task_id/plans/:id(.:format)                {:action=>"show", :controller=>"plans"}
                   task_plan PUT    /tasks/:task_id/plans/:id(.:format)                {:action=>"update", :controller=>"plans"}
                   task_plan DELETE /tasks/:task_id/plans/:id(.:format)                {:action=>"destroy", :controller=>"plans"}
                       tasks GET    /tasks(.:format)                                   {:action=>"index", :controller=>"tasks"}
                       tasks POST   /tasks(.:format)                                   {:action=>"create", :controller=>"tasks"}
                    new_task GET    /tasks/new(.:format)                               {:action=>"new", :controller=>"tasks"}
                   edit_task GET    /tasks/:id/edit(.:format)                          {:action=>"edit", :controller=>"tasks"}
                        task GET    /tasks/:id(.:format)                               {:action=>"show", :controller=>"tasks"}
                        task PUT    /tasks/:id(.:format)                               {:action=>"update", :controller=>"tasks"}
                        task DELETE /tasks/:id(.:format)                               {:action=>"destroy", :controller=>"tasks"}
        select_venue_records GET    /records/select_venue(.:format)                    {:action=>"select_venue", :controller=>"records"}
       select_action_records GET    /records/select_action(.:format)                   {:action=>"select_action", :controller=>"records"}
         find_by_tag_records GET    /records/find_by_tag(.:format)                     {:action=>"find_by_tag", :controller=>"records"}
                     records GET    /records(.:format)                                 {:action=>"index", :controller=>"records"}
                     records POST   /records(.:format)                                 {:action=>"create", :controller=>"records"}
                  new_record GET    /records/new(.:format)                             {:action=>"new", :controller=>"records"}
                 edit_record GET    /records/:id/edit(.:format)                        {:action=>"edit", :controller=>"records"}
                      record GET    /records/:id(.:format)                             {:action=>"show", :controller=>"records"}
                      record PUT    /records/:id(.:format)                             {:action=>"update", :controller=>"records"}
                      record DELETE /records/:id(.:format)                             {:action=>"destroy", :controller=>"records"}
                   list_geos GET    /geos/list(.:format)                               {:action=>"list", :controller=>"geos"}
               selector_geos GET    /geos/selector(.:format)                           {:action=>"selector", :controller=>"geos"}
                        geos GET    /geos(.:format)                                    {:action=>"index", :controller=>"geos"}
                        geos POST   /geos(.:format)                                    {:action=>"create", :controller=>"geos"}
                     new_geo GET    /geos/new(.:format)                                {:action=>"new", :controller=>"geos"}
                    edit_geo GET    /geos/:id/edit(.:format)                           {:action=>"edit", :controller=>"geos"}
                         geo GET    /geos/:id(.:format)                                {:action=>"show", :controller=>"geos"}
                         geo PUT    /geos/:id(.:format)                                {:action=>"update", :controller=>"geos"}
                         geo DELETE /geos/:id(.:format)                                {:action=>"destroy", :controller=>"geos"}
               welcome_users GET    /users/welcome(.:format)                           {:action=>"welcome", :controller=>"users"}
        reset_password_users POST   /users/reset_password(.:format)                    {:action=>"reset_password", :controller=>"users"}
       reset_completed_users GET    /users/reset_completed(.:format)                   {:action=>"reset_completed", :controller=>"users"}
         update_account_user POST   /users/:id/update_account(.:format)                {:action=>"update_account", :controller=>"users"}
          more_timeline_user GET    /users/:id/more_timeline(.:format)                 {:action=>"more_timeline", :controller=>"users"}
           more_answers_user GET    /users/:id/more_answers(.:format)                  {:action=>"more_answers", :controller=>"users"}
         more_questions_user GET    /users/:id/more_questions(.:format)                {:action=>"more_questions", :controller=>"users"}
                  tasks_user GET    /users/:id/tasks(.:format)                         {:action=>"tasks", :controller=>"users"}
                  plans_user GET    /users/:id/plans(.:format)                         {:action=>"plans", :controller=>"users"}
                sayings_user GET    /users/:id/sayings(.:format)                       {:action=>"sayings", :controller=>"users"}
                 topics_user GET    /users/:id/topics(.:format)                        {:action=>"topics", :controller=>"users"}
                 photos_user GET    /users/:id/photos(.:format)                        {:action=>"photos", :controller=>"users"}
                 badges_user GET    /users/:id/badges(.:format)                        {:action=>"badges", :controller=>"users"}
              questions_user GET    /users/:id/questions(.:format)                     {:action=>"questions", :controller=>"users"}
                answers_user GET    /users/:id/answers(.:format)                       {:action=>"answers", :controller=>"users"}
              followers_user GET    /users/:id/followers(.:format)                     {:action=>"followers", :controller=>"users"}
       following_venues_user GET    /users/:id/following_venues(.:format)              {:action=>"following_venues", :controller=>"users"}
        following_users_user GET    /users/:id/following_users(.:format)               {:action=>"following_users", :controller=>"users"}
        following_tasks_user GET    /users/:id/following_tasks(.:format)               {:action=>"following_tasks", :controller=>"users"}
                       users GET    /users(.:format)                                   {:action=>"index", :controller=>"users"}
                       users POST   /users(.:format)                                   {:action=>"create", :controller=>"users"}
                    new_user GET    /users/new(.:format)                               {:action=>"new", :controller=>"users"}
                   edit_user GET    /users/:id/edit(.:format)                          {:action=>"edit", :controller=>"users"}
                        user GET    /users/:id(.:format)                               {:action=>"show", :controller=>"users"}
                        user PUT    /users/:id(.:format)                               {:action=>"update", :controller=>"users"}
                        user DELETE /users/:id(.:format)                               {:action=>"destroy", :controller=>"users"}
                     follows GET    /follows(.:format)                                 {:action=>"index", :controller=>"follows"}
                     follows POST   /follows(.:format)                                 {:action=>"create", :controller=>"follows"}
                  new_follow GET    /follows/new(.:format)                             {:action=>"new", :controller=>"follows"}
                 edit_follow GET    /follows/:id/edit(.:format)                        {:action=>"edit", :controller=>"follows"}
                      follow GET    /follows/:id(.:format)                             {:action=>"show", :controller=>"follows"}
                      follow PUT    /follows/:id(.:format)                             {:action=>"update", :controller=>"follows"}
                      follow DELETE /follows/:id(.:format)                             {:action=>"destroy", :controller=>"follows"}
                      photos GET    /photos(.:format)                                  {:action=>"index", :controller=>"photos"}
                      photos POST   /photos(.:format)                                  {:action=>"create", :controller=>"photos"}
                   new_photo GET    /photos/new(.:format)                              {:action=>"new", :controller=>"photos"}
                  edit_photo GET    /photos/:id/edit(.:format)                         {:action=>"edit", :controller=>"photos"}
                       photo GET    /photos/:id(.:format)                              {:action=>"show", :controller=>"photos"}
                       photo PUT    /photos/:id(.:format)                              {:action=>"update", :controller=>"photos"}
                       photo DELETE /photos/:id(.:format)                              {:action=>"destroy", :controller=>"photos"}
                      topics GET    /topics(.:format)                                  {:action=>"index", :controller=>"topics"}
                      topics POST   /topics(.:format)                                  {:action=>"create", :controller=>"topics"}
                   new_topic GET    /topics/new(.:format)                              {:action=>"new", :controller=>"topics"}
                  edit_topic GET    /topics/:id/edit(.:format)                         {:action=>"edit", :controller=>"topics"}
                       topic GET    /topics/:id(.:format)                              {:action=>"show", :controller=>"topics"}
                       topic PUT    /topics/:id(.:format)                              {:action=>"update", :controller=>"topics"}
                       topic DELETE /topics/:id(.:format)                              {:action=>"destroy", :controller=>"topics"}
                     sayings GET    /sayings(.:format)                                 {:action=>"index", :controller=>"sayings"}
                     sayings POST   /sayings(.:format)                                 {:action=>"create", :controller=>"sayings"}
                  new_saying GET    /sayings/new(.:format)                             {:action=>"new", :controller=>"sayings"}
                 edit_saying GET    /sayings/:id/edit(.:format)                        {:action=>"edit", :controller=>"sayings"}
                      saying GET    /sayings/:id(.:format)                             {:action=>"show", :controller=>"sayings"}
                      saying PUT    /sayings/:id(.:format)                             {:action=>"update", :controller=>"sayings"}
                      saying DELETE /sayings/:id(.:format)                             {:action=>"destroy", :controller=>"sayings"}
                      doings GET    /doings(.:format)                                  {:action=>"index", :controller=>"doings"}
                      doings POST   /doings(.:format)                                  {:action=>"create", :controller=>"doings"}
                   new_doing GET    /doings/new(.:format)                              {:action=>"new", :controller=>"doings"}
                  edit_doing GET    /doings/:id/edit(.:format)                         {:action=>"edit", :controller=>"doings"}
                       doing GET    /doings/:id(.:format)                              {:action=>"show", :controller=>"doings"}
                       doing PUT    /doings/:id(.:format)                              {:action=>"update", :controller=>"doings"}
                       doing DELETE /doings/:id(.:format)                              {:action=>"destroy", :controller=>"doings"}
                       blogs GET    /blogs(.:format)                                   {:action=>"index", :controller=>"blogs"}
                       blogs POST   /blogs(.:format)                                   {:action=>"create", :controller=>"blogs"}
                    new_blog GET    /blogs/new(.:format)                               {:action=>"new", :controller=>"blogs"}
                   edit_blog GET    /blogs/:id/edit(.:format)                          {:action=>"edit", :controller=>"blogs"}
                        blog GET    /blogs/:id(.:format)                               {:action=>"show", :controller=>"blogs"}
                        blog PUT    /blogs/:id(.:format)                               {:action=>"update", :controller=>"blogs"}
                        blog DELETE /blogs/:id(.:format)                               {:action=>"destroy", :controller=>"blogs"}
               clear_message GET    /messages/:id/clear(.:format)                      {:action=>"clear", :controller=>"messages"}
                    messages GET    /messages(.:format)                                {:action=>"index", :controller=>"messages"}
                    messages POST   /messages(.:format)                                {:action=>"create", :controller=>"messages"}
                 new_message GET    /messages/new(.:format)                            {:action=>"new", :controller=>"messages"}
                edit_message GET    /messages/:id/edit(.:format)                       {:action=>"edit", :controller=>"messages"}
                     message GET    /messages/:id(.:format)                            {:action=>"show", :controller=>"messages"}
                     message PUT    /messages/:id(.:format)                            {:action=>"update", :controller=>"messages"}
                     message DELETE /messages/:id(.:format)                            {:action=>"destroy", :controller=>"messages"}
               problem_kases GET    /problems/:problem_id/kases(.:format)              {:action=>"index", :controller=>"kases"}
               problem_kases POST   /problems/:problem_id/kases(.:format)              {:action=>"create", :controller=>"kases"}
            new_problem_kase GET    /problems/:problem_id/kases/new(.:format)          {:action=>"new", :controller=>"kases"}
           edit_problem_kase GET    /problems/:problem_id/kases/:id/edit(.:format)     {:action=>"edit", :controller=>"kases"}
                problem_kase GET    /problems/:problem_id/kases/:id(.:format)          {:action=>"show", :controller=>"kases"}
                problem_kase PUT    /problems/:problem_id/kases/:id(.:format)          {:action=>"update", :controller=>"kases"}
                problem_kase DELETE /problems/:problem_id/kases/:id(.:format)          {:action=>"destroy", :controller=>"kases"}
           problem_solutions GET    /problems/:problem_id/solutions(.:format)          {:action=>"index", :controller=>"solutions"}
           problem_solutions POST   /problems/:problem_id/solutions(.:format)          {:action=>"create", :controller=>"solutions"}
        new_problem_solution GET    /problems/:problem_id/solutions/new(.:format)      {:action=>"new", :controller=>"solutions"}
       edit_problem_solution GET    /problems/:problem_id/solutions/:id/edit(.:format) {:action=>"edit", :controller=>"solutions"}
            problem_solution GET    /problems/:problem_id/solutions/:id(.:format)      {:action=>"show", :controller=>"solutions"}
            problem_solution PUT    /problems/:problem_id/solutions/:id(.:format)      {:action=>"update", :controller=>"solutions"}
            problem_solution DELETE /problems/:problem_id/solutions/:id(.:format)      {:action=>"destroy", :controller=>"solutions"}
             thanks_problems GET    /problems/thanks(.:format)                         {:action=>"thanks", :controller=>"problems"}
           followers_problem GET    /problems/:id/followers(.:format)                  {:action=>"followers", :controller=>"problems"}
                 map_problem GET    /problems/:id/map(.:format)                        {:action=>"map", :controller=>"problems"}
                    problems GET    /problems(.:format)                                {:action=>"index", :controller=>"problems"}
                    problems POST   /problems(.:format)                                {:action=>"create", :controller=>"problems"}
                 new_problem GET    /problems/new(.:format)                            {:action=>"new", :controller=>"problems"}
                edit_problem GET    /problems/:id/edit(.:format)                       {:action=>"edit", :controller=>"problems"}
                     problem GET    /problems/:id(.:format)                            {:action=>"show", :controller=>"problems"}
                     problem PUT    /problems/:id(.:format)                            {:action=>"update", :controller=>"problems"}
                     problem DELETE /problems/:id(.:format)                            {:action=>"destroy", :controller=>"problems"}
        veto_question_answer POST   /questions/:question_id/answers/:id/veto(.:format) {:action=>"veto", :controller=>"answers"}
            question_answers GET    /questions/:question_id/answers(.:format)          {:action=>"index", :controller=>"answers"}
            question_answers POST   /questions/:question_id/answers(.:format)          {:action=>"create", :controller=>"answers"}
         new_question_answer GET    /questions/:question_id/answers/new(.:format)      {:action=>"new", :controller=>"answers"}
        edit_question_answer GET    /questions/:question_id/answers/:id/edit(.:format) {:action=>"edit", :controller=>"answers"}
             question_answer GET    /questions/:question_id/answers/:id(.:format)      {:action=>"show", :controller=>"answers"}
             question_answer PUT    /questions/:question_id/answers/:id(.:format)      {:action=>"update", :controller=>"answers"}
             question_answer DELETE /questions/:question_id/answers/:id(.:format)      {:action=>"destroy", :controller=>"answers"}
              more_questions GET    /questions/more(.:format)                          {:action=>"more", :controller=>"questions"}
                   questions GET    /questions(.:format)                               {:action=>"index", :controller=>"questions"}
                   questions POST   /questions(.:format)                               {:action=>"create", :controller=>"questions"}
                new_question GET    /questions/new(.:format)                           {:action=>"new", :controller=>"questions"}
               edit_question GET    /questions/:id/edit(.:format)                      {:action=>"edit", :controller=>"questions"}
                    question GET    /questions/:id(.:format)                           {:action=>"show", :controller=>"questions"}
                    question PUT    /questions/:id(.:format)                           {:action=>"update", :controller=>"questions"}
                    question DELETE /questions/:id(.:format)                           {:action=>"destroy", :controller=>"questions"}
               more_comments GET    /comments/more(.:format)                           {:action=>"more", :controller=>"comments"}
                    comments GET    /comments(.:format)                                {:action=>"index", :controller=>"comments"}
                    comments POST   /comments(.:format)                                {:action=>"create", :controller=>"comments"}
                 new_comment GET    /comments/new(.:format)                            {:action=>"new", :controller=>"comments"}
                edit_comment GET    /comments/:id/edit(.:format)                       {:action=>"edit", :controller=>"comments"}
                     comment GET    /comments/:id(.:format)                            {:action=>"show", :controller=>"comments"}
                     comment PUT    /comments/:id(.:format)                            {:action=>"update", :controller=>"comments"}
                     comment DELETE /comments/:id(.:format)                            {:action=>"destroy", :controller=>"comments"}
               questions_tag GET    /tags/:id/questions(.:format)                      {:action=>"questions", :controller=>"tags"}
                timeline_tag GET    /tags/:id/timeline(.:format)                       {:action=>"timeline", :controller=>"tags"}
                   more_tags GET    /tags/more(.:format)                               {:action=>"more", :controller=>"tags"}
                        tags GET    /tags(.:format)                                    {:action=>"index", :controller=>"tags"}
                        tags POST   /tags(.:format)                                    {:action=>"create", :controller=>"tags"}
                     new_tag GET    /tags/new(.:format)                                {:action=>"new", :controller=>"tags"}
                    edit_tag GET    /tags/:id/edit(.:format)                           {:action=>"edit", :controller=>"tags"}
                         tag GET    /tags/:id(.:format)                                {:action=>"show", :controller=>"tags"}
                         tag PUT    /tags/:id(.:format)                                {:action=>"update", :controller=>"tags"}
                         tag DELETE /tags/:id(.:format)                                {:action=>"destroy", :controller=>"tags"}
                       votes GET    /votes(.:format)                                   {:action=>"index", :controller=>"votes"}
                       votes POST   /votes(.:format)                                   {:action=>"create", :controller=>"votes"}
                    new_vote GET    /votes/new(.:format)                               {:action=>"new", :controller=>"votes"}
                   edit_vote GET    /votes/:id/edit(.:format)                          {:action=>"edit", :controller=>"votes"}
                        vote GET    /votes/:id(.:format)                               {:action=>"show", :controller=>"votes"}
                        vote PUT    /votes/:id(.:format)                               {:action=>"update", :controller=>"votes"}
                        vote DELETE /votes/:id(.:format)                               {:action=>"destroy", :controller=>"votes"}
                notification GET    /notifications/:id(.:format)                       {:action=>"destroy", :controller=>"notifications"}
          clear_notification GET    /notifications/:id/clear(.:format)                 {:action=>"clear", :controller=>"notifications"}
     clear_all_notifications GET    /notifications/clear_all(.:format)                 {:action=>"clear_all", :controller=>"notifications"}
redirect_clear_notifications POST   /notifications/redirect_clear(.:format)            {:action=>"redirect_clear", :controller=>"notifications"}
               notifications GET    /notifications(.:format)                           {:action=>"index", :controller=>"notifications"}
               notifications POST   /notifications(.:format)                           {:action=>"create", :controller=>"notifications"}
            new_notification GET    /notifications/new(.:format)                       {:action=>"new", :controller=>"notifications"}
           edit_notification GET    /notifications/:id/edit(.:format)                  {:action=>"edit", :controller=>"notifications"}
                notification GET    /notifications/:id(.:format)                       {:action=>"show", :controller=>"notifications"}
                notification PUT    /notifications/:id(.:format)                       {:action=>"update", :controller=>"notifications"}
                notification DELETE /notifications/:id(.:format)                       {:action=>"destroy", :controller=>"notifications"}
                                    /v/:id(.:format)                                   {:to=>#<Proc:0xb6b64ac@/home/lzk/.rvm/gems/ruby-1.9.3-p0/gems/actionpack-3.0.0/lib/action_dispatch/routing/mapper.rb:284 (lambda)>}
                                    /c/:id(.:format)                                   {:to=>#<Proc:0xb6b4c74@/home/lzk/.rvm/gems/ruby-1.9.3-p0/gems/actionpack-3.0.0/lib/action_dispatch/routing/mapper.rb:284 (lambda)>}
                                    /r/:id(.:format)                                   {:to=>#<Proc:0xb6c1e24@/home/lzk/.rvm/gems/ruby-1.9.3-p0/gems/actionpack-3.0.0/lib/action_dispatch/routing/mapper.rb:284 (lambda)>}
                                    /p/:id(.:format)                                   {:to=>#<Proc:0xb6c0114@/home/lzk/.rvm/gems/ruby-1.9.3-p0/gems/actionpack-3.0.0/lib/action_dispatch/routing/mapper.rb:284 (lambda)>}
                                    /t/:id(.:format)                                   {:to=>#<Proc:0xb6be7c4@/home/lzk/.rvm/gems/ruby-1.9.3-p0/gems/actionpack-3.0.0/lib/action_dispatch/routing/mapper.rb:284 (lambda)>}
                                    /s/:id(.:format)                                   {:to=>#<Proc:0xb3ed784@/home/lzk/.rvm/gems/ruby-1.9.3-p0/gems/actionpack-3.0.0/lib/action_dispatch/routing/mapper.rb:284 (lambda)>}
                                    /q/:id(.:format)                                   {:to=>#<Proc:0xb3eb9fc@/home/lzk/.rvm/gems/ruby-1.9.3-p0/gems/actionpack-3.0.0/lib/action_dispatch/routing/mapper.rb:284 (lambda)>}
