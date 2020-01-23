(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.to.int "\n") tmp_int1))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142553 (unix time) try "date -d @1566142553" if you are using GNU date ***
;PC: @     0x7fb26b4d2428 gsignal
;*** SIGABRT (@0x3e8000008b8) received by PID 2232 (TID 0x7fb26ca82740) from PID 2232; stack trace: ***
;    @     0x7fb26b4d24b0 (unknown)
;    @     0x7fb26b4d2428 gsignal
;    @     0x7fb26b4d402a abort
;    @     0x7fb26bb0c84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fb26bb0a6b6 (unknown)
;    @     0x7fb26bb0a701 std::terminate()
;    @     0x7fb26bb0a919 __cxa_throw
;    @     0x7fb26bb3320f std::__throw_invalid_argument()
;    @           0x412423 __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7fb26c3d013b Vlab::Solver::SyntacticOptimizer::check_and_process_for_contains_transformation()
;    @     0x7fb26c3bf007 Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fb26c475450 Vlab::SMT::Eq::accept()
;    @     0x7fb26c37b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb26c3cf32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fb26c3b8388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fb26c473b5c Vlab::SMT::And::accept()
;    @     0x7fb26c37b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb26c3cf32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fb26c3b80e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fb26c471d2a Vlab::SMT::Assert::accept()
;    @     0x7fb26c37b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb26c480699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb26c471067 Vlab::SMT::Script::visit_children()
;    @     0x7fb26c37b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb26c3b80a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7fb26c47103c Vlab::SMT::Script::accept()
;    @     0x7fb26c37b9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb26c3b7ed5 Vlab::Solver::SyntacticOptimizer::start()
;    @     0x7fb26c36180c Vlab::Driver::InitializeSolver()
;    @           0x40ffb9 main
;    @     0x7fb26b4bd830 __libc_start_main
