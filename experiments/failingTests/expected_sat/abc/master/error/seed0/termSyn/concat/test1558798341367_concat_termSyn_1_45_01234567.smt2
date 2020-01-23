(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.substr tmp_str2 tmp_int0 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f7bf5ce4f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3382 (TID 0x7f7bf6316740) from PID 0; stack trace: ***
;    @     0x7f7bf4d664b0 (unknown)
;    @     0x7f7bf5ce4f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f7bf5d0a76c Vlab::SMT::Concat::accept()
;    @     0x7f7bf5c0f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7bf5d0947b Vlab::SMT::Eq::visit_children()
;    @     0x7f7bf5c0f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7bf5cde9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f7bf5d09450 Vlab::SMT::Eq::accept()
;    @     0x7f7bf5c0f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7bf5d14f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7bf5d07b87 Vlab::SMT::And::visit_children()
;    @     0x7f7bf5c0f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7bf5cdd9ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f7bf5d07b5c Vlab::SMT::And::accept()
;    @     0x7f7bf5c0f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7bf5d05ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f7bf5c0f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7bf5cdd739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f7bf5d05d2a Vlab::SMT::Assert::accept()
;    @     0x7f7bf5c0f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7bf5d14699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7bf5d05067 Vlab::SMT::Script::visit_children()
;    @     0x7f7bf5c0f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7bf5cdd703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f7bf5d0503c Vlab::SMT::Script::accept()
;    @     0x7f7bf5c0f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7bf5cdd669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f7bf5cececd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f7bf5cf17a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f7bf5bf5b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f7bf4d51830 __libc_start_main
