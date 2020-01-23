(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "\"a\"" (- 1)) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142578 (unix time) try "date -d @1566142578" if you are using GNU date ***
;PC: @     0x7ff42ac3f428 gsignal
;*** SIGABRT (@0x3e800000a74) received by PID 2676 (TID 0x7ff42c1ef740) from PID 2676; stack trace: ***
;    @     0x7ff42ac3f4b0 (unknown)
;    @     0x7ff42ac3f428 gsignal
;    @     0x7ff42ac4102a abort
;    @     0x7ff42b27984d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7ff42b2776b6 (unknown)
;    @     0x7ff42b277701 std::terminate()
;    @     0x7ff42b277919 __cxa_throw
;    @     0x7ff42b2a02cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7ff42bbd3c40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7ff42bbe9c34 Vlab::SMT::TermConstant::accept()
;    @     0x7ff42bae89ad Vlab::SMT::Visitor::visit()
;    @     0x7ff42bbe5f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7ff42bae89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff42bbd46a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7ff42bbd1a2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7ff42bbe5ee6 Vlab::SMT::CharAt::accept()
;    @     0x7ff42bae89ad Vlab::SMT::Visitor::visit()
;    @     0x7ff42bbe247b Vlab::SMT::Eq::visit_children()
;    @     0x7ff42bae89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff42bbd46a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7ff42bbcd77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7ff42bbe2450 Vlab::SMT::Eq::accept()
;    @     0x7ff42bae89ad Vlab::SMT::Visitor::visit()
;    @     0x7ff42bbd4a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff42bbcb8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff42bbe0b5c Vlab::SMT::And::accept()
;    @     0x7ff42bae89ad Vlab::SMT::Visitor::visit()
;    @     0x7ff42bbd4a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff42bbcad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff42bbded2a Vlab::SMT::Assert::accept()
