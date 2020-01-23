(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;tmp_str3 = 2
;actual status: not_implemented
;PC: @     0x7f6aebc00ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2595 (TID 0x7f6b6afee740) from PID 0; stack trace: ***
;    @     0x7f6b69a3e4b0 (unknown)
;    @     0x7f6aebc00ed6 dfaProject
;    @     0x7f6b6aa107ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f6b6aaa2318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f6b6a999f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f6b6a9e6400 Vlab::SMT::Replace::accept()
;    @     0x7f6b6a8e79ad Vlab::SMT::Visitor::visit()
;    @     0x7f6b6a9947f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6b6a9e1450 Vlab::SMT::Eq::accept()
;    @     0x7f6b6a8e79ad Vlab::SMT::Visitor::visit()
;    @     0x7f6b6a992878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f6b6a9d35ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f6b6a9ca96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6b6a9dfb5c Vlab::SMT::And::accept()
;    @     0x7f6b6a8e79ad Vlab::SMT::Visitor::visit()
;    @     0x7f6b6a9d3a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6b6a9c9d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6b6a9ddd2a Vlab::SMT::Assert::accept()
;    @     0x7f6b6a8e79ad Vlab::SMT::Visitor::visit()
;    @     0x7f6b6a9ec699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6b6a9dd067 Vlab::SMT::Script::visit_children()
;    @     0x7f6b6a8e79e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6b6a9c9b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f6b6a9dd03c Vlab::SMT::Script::accept()
;    @     0x7f6b6a8e79ad Vlab::SMT::Visitor::visit()
;    @     0x7f6b6a9c97bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f6b6a8cdb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f6b69a29830 __libc_start_main
;    @           0x40de89 _start
