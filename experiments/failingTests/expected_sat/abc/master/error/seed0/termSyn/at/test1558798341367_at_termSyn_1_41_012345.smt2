(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.at (int.to.str tmp_int0) (str.to.int tmp_str2)) (str.replace tmp_str2 tmp_str2 tmp_str8)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str8 = 
;actual status: not_implemented
;PC: @     0x7f5b5c3da74c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;*** SIGSEGV (@0x0) received by PID 3289 (TID 0x7f5b5ca09740) from PID 0; stack trace: ***
;    @     0x7f5b5b4594b0 (unknown)
;    @     0x7f5b5c3da74c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;    @     0x7f5b5c3ffee6 Vlab::SMT::CharAt::accept()
;    @     0x7f5b5c3029ad Vlab::SMT::Visitor::visit()
;    @     0x7f5b5c3fc47b Vlab::SMT::Eq::visit_children()
;    @     0x7f5b5c3029e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5b5c3d19aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f5b5c3fc450 Vlab::SMT::Eq::accept()
;    @     0x7f5b5c3029ad Vlab::SMT::Visitor::visit()
;    @     0x7f5b5c407f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5b5c3fab87 Vlab::SMT::And::visit_children()
;    @     0x7f5b5c3029e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5b5c3d09ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f5b5c3fab5c Vlab::SMT::And::accept()
;    @     0x7f5b5c3029ad Vlab::SMT::Visitor::visit()
;    @     0x7f5b5c3f8ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f5b5c3029e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5b5c3d0739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f5b5c3f8d2a Vlab::SMT::Assert::accept()
;    @     0x7f5b5c3029ad Vlab::SMT::Visitor::visit()
;    @     0x7f5b5c407699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5b5c3f8067 Vlab::SMT::Script::visit_children()
;    @     0x7f5b5c3029e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5b5c3d0703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f5b5c3f803c Vlab::SMT::Script::accept()
;    @     0x7f5b5c3029ad Vlab::SMT::Visitor::visit()
;    @     0x7f5b5c3d0669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f5b5c3dfecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f5b5c3e47a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f5b5c2e8b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f5b5b444830 __libc_start_main
