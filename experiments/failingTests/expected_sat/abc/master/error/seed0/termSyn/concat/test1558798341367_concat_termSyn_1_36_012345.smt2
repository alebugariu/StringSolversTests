(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.replace tmp_str9 tmp_str9 tmp_str8)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a
;tmp_str8 = 
;actual status: not_implemented
;PC: @     0x7fcbf648ef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3348 (TID 0x7fcbf6ac0740) from PID 0; stack trace: ***
;    @     0x7fcbf55104b0 (unknown)
;    @     0x7fcbf648ef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7fcbf64b476c Vlab::SMT::Concat::accept()
;    @     0x7fcbf63b99ad Vlab::SMT::Visitor::visit()
;    @     0x7fcbf64b347b Vlab::SMT::Eq::visit_children()
;    @     0x7fcbf63b99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcbf64889aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7fcbf64b3450 Vlab::SMT::Eq::accept()
;    @     0x7fcbf63b99ad Vlab::SMT::Visitor::visit()
;    @     0x7fcbf64bef79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fcbf64b1b87 Vlab::SMT::And::visit_children()
;    @     0x7fcbf63b99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcbf64879ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7fcbf64b1b5c Vlab::SMT::And::accept()
;    @     0x7fcbf63b99ad Vlab::SMT::Visitor::visit()
;    @     0x7fcbf64afddf Vlab::SMT::Assert::visit_children()
;    @     0x7fcbf63b99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcbf6487739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7fcbf64afd2a Vlab::SMT::Assert::accept()
;    @     0x7fcbf63b99ad Vlab::SMT::Visitor::visit()
;    @     0x7fcbf64be699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fcbf64af067 Vlab::SMT::Script::visit_children()
;    @     0x7fcbf63b99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcbf6487703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7fcbf64af03c Vlab::SMT::Script::accept()
;    @     0x7fcbf63b99ad Vlab::SMT::Visitor::visit()
;    @     0x7fcbf6487669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7fcbf6496ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7fcbf649b7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7fcbf639fb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fcbf54fb830 __libc_start_main
