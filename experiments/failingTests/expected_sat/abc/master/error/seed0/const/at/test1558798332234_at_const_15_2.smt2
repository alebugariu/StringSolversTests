(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "-1" (- 1)) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142578 (unix time) try "date -d @1566142578" if you are using GNU date ***
;PC: @     0x7f79877e4428 gsignal
;*** SIGABRT (@0x3e800000a69) received by PID 2665 (TID 0x7f7988d94740) from PID 2665; stack trace: ***
;    @     0x7f79877e44b0 (unknown)
;    @     0x7f79877e4428 gsignal
;    @     0x7f79877e602a abort
;    @     0x7f7987e1e84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f7987e1c6b6 (unknown)
;    @     0x7f7987e1c701 std::terminate()
;    @     0x7f7987e1c919 __cxa_throw
;    @     0x7f7987e452cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f7988778c40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7f798878ec34 Vlab::SMT::TermConstant::accept()
;    @     0x7f798868d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f798878af28 Vlab::SMT::CharAt::visit_children()
;    @     0x7f798868d9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f79887796a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f7988776a2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7f798878aee6 Vlab::SMT::CharAt::accept()
;    @     0x7f798868d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f798878747b Vlab::SMT::Eq::visit_children()
;    @     0x7f798868d9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f79887796a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f798877277b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f7988787450 Vlab::SMT::Eq::accept()
;    @     0x7f798868d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7988779a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f79887708c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7988785b5c Vlab::SMT::And::accept()
;    @     0x7f798868d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7988779a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f798876fd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7988783d2a Vlab::SMT::Assert::accept()
