(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\na"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f57e5498ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2417 (TID 0x7f5864886740) from PID 0; stack trace: ***
;    @     0x7f58632d64b0 (unknown)
;    @     0x7f57e5498ed6 dfaProject
;    @     0x7f58642a87ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f586433a318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f5864231f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f586427e400 Vlab::SMT::Replace::accept()
;    @     0x7f586417f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f586422c7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f5864279450 Vlab::SMT::Eq::accept()
;    @     0x7f586417f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f586422a878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f586426b5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f586426296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5864277b5c Vlab::SMT::And::accept()
;    @     0x7f586417f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f586426ba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5864261d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5864275d2a Vlab::SMT::Assert::accept()
;    @     0x7f586417f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5864284699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5864275067 Vlab::SMT::Script::visit_children()
;    @     0x7f586417f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5864261b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f586427503c Vlab::SMT::Script::accept()
;    @     0x7f586417f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f58642617bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f5864165b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f58632c1830 __libc_start_main
;    @           0x40de89 _start
