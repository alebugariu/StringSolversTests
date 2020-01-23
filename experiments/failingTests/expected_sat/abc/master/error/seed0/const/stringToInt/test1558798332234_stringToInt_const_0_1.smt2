(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.to.int "") tmp_int1))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142553 (unix time) try "date -d @1566142553" if you are using GNU date ***
;PC: @     0x7f214d3e8428 gsignal
;*** SIGABRT (@0x3e8000008b5) received by PID 2229 (TID 0x7f214e998740) from PID 2229; stack trace: ***
;    @     0x7f214d3e84b0 (unknown)
;    @     0x7f214d3e8428 gsignal
;    @     0x7f214d3ea02a abort
;    @     0x7f214da2284d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f214da206b6 (unknown)
;    @     0x7f214da20701 std::terminate()
;    @     0x7f214da20919 __cxa_throw
;    @     0x7f214da4920f std::__throw_invalid_argument()
;    @           0x412423 __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f214e2e613b Vlab::Solver::SyntacticOptimizer::check_and_process_for_contains_transformation()
;    @     0x7f214e2d5007 Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f214e38b450 Vlab::SMT::Eq::accept()
;    @     0x7f214e2919ad Vlab::SMT::Visitor::visit()
;    @     0x7f214e2e532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f214e2ce388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f214e389b5c Vlab::SMT::And::accept()
;    @     0x7f214e2919ad Vlab::SMT::Visitor::visit()
;    @     0x7f214e2e532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f214e2ce0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f214e387d2a Vlab::SMT::Assert::accept()
;    @     0x7f214e2919ad Vlab::SMT::Visitor::visit()
;    @     0x7f214e396699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f214e387067 Vlab::SMT::Script::visit_children()
;    @     0x7f214e2919e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f214e2ce0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7f214e38703c Vlab::SMT::Script::accept()
;    @     0x7f214e2919ad Vlab::SMT::Visitor::visit()
;    @     0x7f214e2cded5 Vlab::Solver::SyntacticOptimizer::start()
;    @     0x7f214e27780c Vlab::Driver::InitializeSolver()
;    @           0x40ffb9 main
;    @     0x7f214d3d3830 __libc_start_main
