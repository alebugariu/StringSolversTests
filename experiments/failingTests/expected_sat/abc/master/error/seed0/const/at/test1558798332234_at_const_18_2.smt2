(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "0" (- 1)) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142579 (unix time) try "date -d @1566142579" if you are using GNU date ***
;PC: @     0x7f5ecaa9e428 gsignal
;*** SIGABRT (@0x3e800000a80) received by PID 2688 (TID 0x7f5ecc04e740) from PID 2688; stack trace: ***
;    @     0x7f5ecaa9e4b0 (unknown)
;    @     0x7f5ecaa9e428 gsignal
;    @     0x7f5ecaaa002a abort
;    @     0x7f5ecb0d884d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f5ecb0d66b6 (unknown)
;    @     0x7f5ecb0d6701 std::terminate()
;    @     0x7f5ecb0d6919 __cxa_throw
;    @     0x7f5ecb0ff2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f5ecba32c40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7f5ecba48c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f5ecb9479ad Vlab::SMT::Visitor::visit()
;    @     0x7f5ecba44f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7f5ecb9479e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5ecba336a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f5ecba30a2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7f5ecba44ee6 Vlab::SMT::CharAt::accept()
;    @     0x7f5ecb9479ad Vlab::SMT::Visitor::visit()
;    @     0x7f5ecba4147b Vlab::SMT::Eq::visit_children()
;    @     0x7f5ecb9479e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5ecba336a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f5ecba2c77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f5ecba41450 Vlab::SMT::Eq::accept()
;    @     0x7f5ecb9479ad Vlab::SMT::Visitor::visit()
;    @     0x7f5ecba33a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5ecba2a8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5ecba3fb5c Vlab::SMT::And::accept()
;    @     0x7f5ecb9479ad Vlab::SMT::Visitor::visit()
;    @     0x7f5ecba33a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5ecba29d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5ecba3dd2a Vlab::SMT::Assert::accept()
