(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.len tmp_str0) (str.to.int tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:40.479656  2940 UnaryAutomaton.cpp:325] 1
;I0818 17:36:40.491148  2940 UnaryAutomaton.cpp:326] 1
;I0818 17:36:40.491173  2940 UnaryAutomaton.cpp:327] 1
;F0818 17:36:40.496403  2940 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f2554b3ef5d  google::LogMessage::Fail()
;    @     0x7f2554b41513  google::LogMessage::SendToLog()
;    @     0x7f2554b3eaeb  google::LogMessage::Flush()
;    @     0x7f2554b4045e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f2555162a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f25551b0992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f25550af9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2555161762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f25551addf0  Vlab::SMT::ToString::accept()
;    @     0x7f25550af9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f255515c7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f25551a9450  Vlab::SMT::Eq::accept()
;    @     0x7f25550af9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f255515a878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f255519b5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f255519296e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f25551a7b5c  Vlab::SMT::And::accept()
;    @     0x7f25550af9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f255519ba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2555191d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f25551a5d2a  Vlab::SMT::Assert::accept()
;    @     0x7f25550af9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f25551b4699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f25551a5067  Vlab::SMT::Script::visit_children()
;    @     0x7f25550af9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2555191b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f25551a503c  Vlab::SMT::Script::accept()
;    @     0x7f25550af9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f25551917bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f2555095b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f25541f1830  __libc_start_main
