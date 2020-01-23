(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int11 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.to.int tmp_str0)) (int.to.str tmp_int11)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int11 = -1
;actual status: not_implemented
;I0818 17:37:20.057142  3272 UnaryAutomaton.cpp:325] 1
;I0818 17:37:20.057163  3272 UnaryAutomaton.cpp:326] 1
;I0818 17:37:20.057180  3272 UnaryAutomaton.cpp:327] 1
;F0818 17:37:20.062464  3272 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f6236c8ff5d  google::LogMessage::Fail()
;    @     0x7f6236c92513  google::LogMessage::SendToLog()
;    @     0x7f6236c8faeb  google::LogMessage::Flush()
;    @     0x7f6236c9145e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f62372b3a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f6237301992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f62372009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f62372b2762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f62372fedf0  Vlab::SMT::ToString::accept()
;    @     0x7f62372009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f62372ad7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f62372fa450  Vlab::SMT::Eq::accept()
;    @     0x7f62372009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f62372ab878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f62372ec5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f62372e396e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f62372f8b5c  Vlab::SMT::And::accept()
;    @     0x7f62372009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f62372eca82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f62372e2d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f62372f6d2a  Vlab::SMT::Assert::accept()
;    @     0x7f62372009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6237305699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f62372f6067  Vlab::SMT::Script::visit_children()
;    @     0x7f62372009e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f62372e2b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f62372f603c  Vlab::SMT::Script::accept()
;    @     0x7f62372009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f62372e27bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f62371e6b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f6236342830  __libc_start_main
