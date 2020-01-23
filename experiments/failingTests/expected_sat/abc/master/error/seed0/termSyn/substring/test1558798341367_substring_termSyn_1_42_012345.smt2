(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.to.int tmp_str0) (str.to.int tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:41.414094  2950 UnaryAutomaton.cpp:325] 1
;I0818 17:36:41.414132  2950 UnaryAutomaton.cpp:326] 1
;I0818 17:36:41.414141  2950 UnaryAutomaton.cpp:327] 1
;F0818 17:36:41.430219  2950 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f4488514f5d  google::LogMessage::Fail()
;    @     0x7f4488517513  google::LogMessage::SendToLog()
;    @     0x7f4488514aeb  google::LogMessage::Flush()
;    @     0x7f448851645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f4488b38a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f4488b86992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f4488a859ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4488b37762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f4488b83df0  Vlab::SMT::ToString::accept()
;    @     0x7f4488a859ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4488b327f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f4488b7f450  Vlab::SMT::Eq::accept()
;    @     0x7f4488a859ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4488b30878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f4488b715ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f4488b6896e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f4488b7db5c  Vlab::SMT::And::accept()
;    @     0x7f4488a859ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4488b71a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4488b67d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f4488b7bd2a  Vlab::SMT::Assert::accept()
;    @     0x7f4488a859ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4488b8a699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4488b7b067  Vlab::SMT::Script::visit_children()
;    @     0x7f4488a859e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4488b67b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f4488b7b03c  Vlab::SMT::Script::accept()
;    @     0x7f4488a859ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4488b677bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4488a6bb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f4487bc7830  __libc_start_main
