(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str9 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.substr tmp_str9 tmp_int0 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a
;actual status: not_implemented
;PC: @     0x7feb6d563f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3355 (TID 0x7feb6db95740) from PID 0; stack trace: ***
;    @     0x7feb6c5e54b0 (unknown)
;    @     0x7feb6d563f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7feb6d58976c Vlab::SMT::Concat::accept()
;    @     0x7feb6d48e9ad Vlab::SMT::Visitor::visit()
;    @     0x7feb6d58847b Vlab::SMT::Eq::visit_children()
;    @     0x7feb6d48e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7feb6d55d9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7feb6d588450 Vlab::SMT::Eq::accept()
;    @     0x7feb6d48e9ad Vlab::SMT::Visitor::visit()
;    @     0x7feb6d593f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7feb6d586b87 Vlab::SMT::And::visit_children()
;    @     0x7feb6d48e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7feb6d55c9ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7feb6d586b5c Vlab::SMT::And::accept()
;    @     0x7feb6d48e9ad Vlab::SMT::Visitor::visit()
;    @     0x7feb6d584ddf Vlab::SMT::Assert::visit_children()
;    @     0x7feb6d48e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7feb6d55c739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7feb6d584d2a Vlab::SMT::Assert::accept()
;    @     0x7feb6d48e9ad Vlab::SMT::Visitor::visit()
;    @     0x7feb6d593699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7feb6d584067 Vlab::SMT::Script::visit_children()
;    @     0x7feb6d48e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7feb6d55c703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7feb6d58403c Vlab::SMT::Script::accept()
;    @     0x7feb6d48e9ad Vlab::SMT::Visitor::visit()
;    @     0x7feb6d55c669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7feb6d56becd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7feb6d5707a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7feb6d474b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7feb6c5d0830 __libc_start_main
