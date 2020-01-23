(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\"a\"0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7fd2689aaed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2588 (TID 0x7fd2e7d98740) from PID 0; stack trace: ***
;    @     0x7fd2e67e84b0 (unknown)
;    @     0x7fd2689aaed6 dfaProject
;    @     0x7fd2e77ba7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fd2e784c318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fd2e7743f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fd2e7790400 Vlab::SMT::Replace::accept()
;    @     0x7fd2e76919ad Vlab::SMT::Visitor::visit()
;    @     0x7fd2e773e7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fd2e778b450 Vlab::SMT::Eq::accept()
;    @     0x7fd2e76919ad Vlab::SMT::Visitor::visit()
;    @     0x7fd2e773c878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fd2e777d5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fd2e777496e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd2e7789b5c Vlab::SMT::And::accept()
;    @     0x7fd2e76919ad Vlab::SMT::Visitor::visit()
;    @     0x7fd2e777da82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd2e7773d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd2e7787d2a Vlab::SMT::Assert::accept()
;    @     0x7fd2e76919ad Vlab::SMT::Visitor::visit()
;    @     0x7fd2e7796699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd2e7787067 Vlab::SMT::Script::visit_children()
;    @     0x7fd2e76919e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd2e7773b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fd2e778703c Vlab::SMT::Script::accept()
;    @     0x7fd2e76919ad Vlab::SMT::Visitor::visit()
;    @     0x7fd2e77737bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fd2e7677b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fd2e67d3830 __libc_start_main
;    @           0x40de89 _start
