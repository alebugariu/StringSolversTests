(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "a" (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142577 (unix time) try "date -d @1566142577" if you are using GNU date ***
;PC: @     0x7f44cf35a428 gsignal
;*** SIGABRT (@0x3e800000a5d) received by PID 2653 (TID 0x7f44d090a740) from PID 2653; stack trace: ***
;    @     0x7f44cf35a4b0 (unknown)
;    @     0x7f44cf35a428 gsignal
;    @     0x7f44cf35c02a abort
;    @     0x7f44cf99484d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f44cf9926b6 (unknown)
;    @     0x7f44cf992701 std::terminate()
;    @     0x7f44cf992919 __cxa_throw
;    @     0x7f44cf9bb2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f44d02eec40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7f44d0304c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f44d02039ad Vlab::SMT::Visitor::visit()
;    @     0x7f44d0300f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7f44d02039e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f44d02ef6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f44d02eca2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7f44d0300ee6 Vlab::SMT::CharAt::accept()
;    @     0x7f44d02039ad Vlab::SMT::Visitor::visit()
;    @     0x7f44d02fd47b Vlab::SMT::Eq::visit_children()
;    @     0x7f44d02039e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f44d02ef6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f44d02e877b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f44d02fd450 Vlab::SMT::Eq::accept()
;    @     0x7f44d02039ad Vlab::SMT::Visitor::visit()
;    @     0x7f44d02efa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f44d02e68c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f44d02fbb5c Vlab::SMT::And::accept()
;    @     0x7f44d02039ad Vlab::SMT::Visitor::visit()
;    @     0x7f44d02efa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f44d02e5d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f44d02f9d2a Vlab::SMT::Assert::accept()
