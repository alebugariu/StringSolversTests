(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "" "" tmp_str2) "-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7f6f57859ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2489 (TID 0x7f6fd6c47740) from PID 0; stack trace: ***
;    @     0x7f6fd56974b0 (unknown)
;    @     0x7f6f57859ed6 dfaProject
;    @     0x7f6fd66697ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f6fd66fb318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f6fd65f2f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f6fd663f400 Vlab::SMT::Replace::accept()
;    @     0x7f6fd65409ad Vlab::SMT::Visitor::visit()
;    @     0x7f6fd65ed7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6fd663a450 Vlab::SMT::Eq::accept()
;    @     0x7f6fd65409ad Vlab::SMT::Visitor::visit()
;    @     0x7f6fd65eb878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f6fd662c5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f6fd662396e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6fd6638b5c Vlab::SMT::And::accept()
;    @     0x7f6fd65409ad Vlab::SMT::Visitor::visit()
;    @     0x7f6fd662ca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6fd6622d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6fd6636d2a Vlab::SMT::Assert::accept()
;    @     0x7f6fd65409ad Vlab::SMT::Visitor::visit()
;    @     0x7f6fd6645699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6fd6636067 Vlab::SMT::Script::visit_children()
;    @     0x7f6fd65409e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6fd6622b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f6fd663603c Vlab::SMT::Script::accept()
;    @     0x7f6fd65409ad Vlab::SMT::Visitor::visit()
;    @     0x7f6fd66227bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f6fd6526b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f6fd5682830 __libc_start_main
;    @           0x40de89 _start
