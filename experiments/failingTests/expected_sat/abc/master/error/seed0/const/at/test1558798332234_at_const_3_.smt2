(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "\"a\"" (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142579 (unix time) try "date -d @1566142579" if you are using GNU date ***
;PC: @     0x7ff11aca1428 gsignal
;*** SIGABRT (@0x3e800000a87) received by PID 2695 (TID 0x7ff11c251740) from PID 2695; stack trace: ***
;    @     0x7ff11aca14b0 (unknown)
;    @     0x7ff11aca1428 gsignal
;    @     0x7ff11aca302a abort
;    @     0x7ff11b2db84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7ff11b2d96b6 (unknown)
;    @     0x7ff11b2d9701 std::terminate()
;    @     0x7ff11b2d9919 __cxa_throw
;    @     0x7ff11b3022cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7ff11bc35c40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7ff11bc4bc34 Vlab::SMT::TermConstant::accept()
;    @     0x7ff11bb4a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff11bc47f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7ff11bb4a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff11bc366a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7ff11bc33a2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7ff11bc47ee6 Vlab::SMT::CharAt::accept()
;    @     0x7ff11bb4a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff11bc4447b Vlab::SMT::Eq::visit_children()
;    @     0x7ff11bb4a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff11bc366a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7ff11bc2f77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7ff11bc44450 Vlab::SMT::Eq::accept()
;    @     0x7ff11bb4a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff11bc36a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff11bc2d8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff11bc42b5c Vlab::SMT::And::accept()
;    @     0x7ff11bb4a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff11bc36a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff11bc2cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff11bc40d2a Vlab::SMT::Assert::accept()
