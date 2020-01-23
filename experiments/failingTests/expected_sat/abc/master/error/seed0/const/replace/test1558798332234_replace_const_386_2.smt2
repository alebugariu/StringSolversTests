(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "0" "" tmp_str2) "a0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f318bf4bed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2347 (TID 0x7f320b339740) from PID 0; stack trace: ***
;    @     0x7f3209d894b0 (unknown)
;    @     0x7f318bf4bed6 dfaProject
;    @     0x7f320ad5b7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f320aded318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f320ace4f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f320ad31400 Vlab::SMT::Replace::accept()
;    @     0x7f320ac329ad Vlab::SMT::Visitor::visit()
;    @     0x7f320acdf7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f320ad2c450 Vlab::SMT::Eq::accept()
;    @     0x7f320ac329ad Vlab::SMT::Visitor::visit()
;    @     0x7f320acdd878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f320ad1e5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f320ad1596e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f320ad2ab5c Vlab::SMT::And::accept()
;    @     0x7f320ac329ad Vlab::SMT::Visitor::visit()
;    @     0x7f320ad1ea82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f320ad14d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f320ad28d2a Vlab::SMT::Assert::accept()
;    @     0x7f320ac329ad Vlab::SMT::Visitor::visit()
;    @     0x7f320ad37699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f320ad28067 Vlab::SMT::Script::visit_children()
;    @     0x7f320ac329e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f320ad14b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f320ad2803c Vlab::SMT::Script::accept()
;    @     0x7f320ac329ad Vlab::SMT::Visitor::visit()
;    @     0x7f320ad147bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f320ac18b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f3209d74830 __libc_start_main
;    @           0x40de89 _start
