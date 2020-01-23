(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "" (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142579 (unix time) try "date -d @1566142579" if you are using GNU date ***
;PC: @     0x7f9b9b52a428 gsignal
;*** SIGABRT (@0x3e800000a84) received by PID 2692 (TID 0x7f9b9cada740) from PID 2692; stack trace: ***
;    @     0x7f9b9b52a4b0 (unknown)
;    @     0x7f9b9b52a428 gsignal
;    @     0x7f9b9b52c02a abort
;    @     0x7f9b9bb6484d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f9b9bb626b6 (unknown)
;    @     0x7f9b9bb62701 std::terminate()
;    @     0x7f9b9bb62919 __cxa_throw
;    @     0x7f9b9bb8b2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f9b9c4bec40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7f9b9c4d4c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f9b9c3d39ad Vlab::SMT::Visitor::visit()
;    @     0x7f9b9c4d0f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7f9b9c3d39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9b9c4bf6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f9b9c4bca2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7f9b9c4d0ee6 Vlab::SMT::CharAt::accept()
;    @     0x7f9b9c3d39ad Vlab::SMT::Visitor::visit()
;    @     0x7f9b9c4cd47b Vlab::SMT::Eq::visit_children()
;    @     0x7f9b9c3d39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9b9c4bf6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f9b9c4b877b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f9b9c4cd450 Vlab::SMT::Eq::accept()
;    @     0x7f9b9c3d39ad Vlab::SMT::Visitor::visit()
;    @     0x7f9b9c4bfa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9b9c4b68c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f9b9c4cbb5c Vlab::SMT::And::accept()
;    @     0x7f9b9c3d39ad Vlab::SMT::Visitor::visit()
;    @     0x7f9b9c4bfa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9b9c4b5d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f9b9c4c9d2a Vlab::SMT::Assert::accept()
