(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "" tmp_str2) "a2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f77824c6ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2632 (TID 0x7f78018b4740) from PID 0; stack trace: ***
;    @     0x7f78003044b0 (unknown)
;    @     0x7f77824c6ed6 dfaProject
;    @     0x7f78012d67ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f7801368318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f780125ff05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f78012ac400 Vlab::SMT::Replace::accept()
;    @     0x7f78011ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f780125a7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f78012a7450 Vlab::SMT::Eq::accept()
;    @     0x7f78011ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7801258878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f78012995ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f780129096e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f78012a5b5c Vlab::SMT::And::accept()
;    @     0x7f78011ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f7801299a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f780128fd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f78012a3d2a Vlab::SMT::Assert::accept()
;    @     0x7f78011ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f78012b2699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f78012a3067 Vlab::SMT::Script::visit_children()
;    @     0x7f78011ad9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f780128fb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f78012a303c Vlab::SMT::Script::accept()
;    @     0x7f78011ad9ad Vlab::SMT::Visitor::visit()
;    @     0x7f780128f7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f7801193b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f78002ef830 __libc_start_main
;    @           0x40de89 _start
