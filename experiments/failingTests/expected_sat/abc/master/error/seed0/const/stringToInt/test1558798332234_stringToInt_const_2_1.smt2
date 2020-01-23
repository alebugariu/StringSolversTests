(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.to.int "a") tmp_int1))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142553 (unix time) try "date -d @1566142553" if you are using GNU date ***
;PC: @     0x7fc03cbd8428 gsignal
;*** SIGABRT (@0x3e8000008bb) received by PID 2235 (TID 0x7fc03e188740) from PID 2235; stack trace: ***
;    @     0x7fc03cbd84b0 (unknown)
;    @     0x7fc03cbd8428 gsignal
;    @     0x7fc03cbda02a abort
;    @     0x7fc03d21284d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fc03d2106b6 (unknown)
;    @     0x7fc03d210701 std::terminate()
;    @     0x7fc03d210919 __cxa_throw
;    @     0x7fc03d23920f std::__throw_invalid_argument()
;    @           0x412423 __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7fc03dad613b Vlab::Solver::SyntacticOptimizer::check_and_process_for_contains_transformation()
;    @     0x7fc03dac5007 Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fc03db7b450 Vlab::SMT::Eq::accept()
;    @     0x7fc03da819ad Vlab::SMT::Visitor::visit()
;    @     0x7fc03dad532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fc03dabe388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fc03db79b5c Vlab::SMT::And::accept()
;    @     0x7fc03da819ad Vlab::SMT::Visitor::visit()
;    @     0x7fc03dad532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fc03dabe0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fc03db77d2a Vlab::SMT::Assert::accept()
;    @     0x7fc03da819ad Vlab::SMT::Visitor::visit()
;    @     0x7fc03db86699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc03db77067 Vlab::SMT::Script::visit_children()
;    @     0x7fc03da819e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc03dabe0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7fc03db7703c Vlab::SMT::Script::accept()
;    @     0x7fc03da819ad Vlab::SMT::Visitor::visit()
;    @     0x7fc03dabded5 Vlab::Solver::SyntacticOptimizer::start()
;    @     0x7fc03da6780c Vlab::Driver::InitializeSolver()
;    @           0x40ffb9 main
;    @     0x7fc03cbc3830 __libc_start_main
