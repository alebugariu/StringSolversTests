(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (int.to.str tmp_int0)) (int.to.str tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;actual status: not_implemented
;PC: @     0x7f0fd599ef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3361 (TID 0x7f0fd5fd0740) from PID 0; stack trace: ***
;    @     0x7f0fd4a204b0 (unknown)
;    @     0x7f0fd599ef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f0fd59c476c Vlab::SMT::Concat::accept()
;    @     0x7f0fd58c99ad Vlab::SMT::Visitor::visit()
;    @     0x7f0fd59c347b Vlab::SMT::Eq::visit_children()
;    @     0x7f0fd58c99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0fd59989aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f0fd59c3450 Vlab::SMT::Eq::accept()
;    @     0x7f0fd58c99ad Vlab::SMT::Visitor::visit()
;    @     0x7f0fd59cef79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0fd59c1b87 Vlab::SMT::And::visit_children()
;    @     0x7f0fd58c99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0fd59979ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f0fd59c1b5c Vlab::SMT::And::accept()
;    @     0x7f0fd58c99ad Vlab::SMT::Visitor::visit()
;    @     0x7f0fd59bfddf Vlab::SMT::Assert::visit_children()
;    @     0x7f0fd58c99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0fd5997739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f0fd59bfd2a Vlab::SMT::Assert::accept()
;    @     0x7f0fd58c99ad Vlab::SMT::Visitor::visit()
;    @     0x7f0fd59ce699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0fd59bf067 Vlab::SMT::Script::visit_children()
;    @     0x7f0fd58c99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0fd5997703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f0fd59bf03c Vlab::SMT::Script::accept()
;    @     0x7f0fd58c99ad Vlab::SMT::Visitor::visit()
;    @     0x7f0fd5997669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f0fd59a6ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f0fd59ab7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f0fd58afb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f0fd4a0b830 __libc_start_main
