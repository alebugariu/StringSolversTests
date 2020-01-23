(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.++ tmp_str8 tmp_str8)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str8 = 
;actual status: not_implemented
;PC: @     0x7f4f636f1f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3367 (TID 0x7f4f63d23740) from PID 0; stack trace: ***
;    @     0x7f4f627734b0 (unknown)
;    @     0x7f4f636f1f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f4f6371776c Vlab::SMT::Concat::accept()
;    @     0x7f4f6361c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4f6371647b Vlab::SMT::Eq::visit_children()
;    @     0x7f4f6361c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4f636eb9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f4f63716450 Vlab::SMT::Eq::accept()
;    @     0x7f4f6361c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4f63721f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4f63714b87 Vlab::SMT::And::visit_children()
;    @     0x7f4f6361c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4f636ea9ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f4f63714b5c Vlab::SMT::And::accept()
;    @     0x7f4f6361c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4f63712ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f4f6361c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4f636ea739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f4f63712d2a Vlab::SMT::Assert::accept()
;    @     0x7f4f6361c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4f63721699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4f63712067 Vlab::SMT::Script::visit_children()
;    @     0x7f4f6361c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4f636ea703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f4f6371203c Vlab::SMT::Script::accept()
;    @     0x7f4f6361c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f4f636ea669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f4f636f9ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f4f636fe7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4f63602b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4f6275e830 __libc_start_main
