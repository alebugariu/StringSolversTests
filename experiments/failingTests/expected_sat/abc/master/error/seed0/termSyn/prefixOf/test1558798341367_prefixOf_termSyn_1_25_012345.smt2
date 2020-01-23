(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (= tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:34.468194  2874 UnaryAutomaton.cpp:325] 1
;I0818 17:36:34.470476  2874 UnaryAutomaton.cpp:326] 1
;I0818 17:36:34.470494  2874 UnaryAutomaton.cpp:327] 1
;F0818 17:36:34.490809  2874 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f4c6eae8f5d  google::LogMessage::Fail()
;    @     0x7f4c6eaeb513  google::LogMessage::SendToLog()
;    @     0x7f4c6eae8aeb  google::LogMessage::Flush()
;    @     0x7f4c6eaea45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f4c6f10ca26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f4c6f15a992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f4c6f0599ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4c6f10b762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f4c6f157df0  Vlab::SMT::ToString::accept()
;    @     0x7f4c6f0599ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4c6f109255  Vlab::Solver::VariableValueComputer::visitBegins()
;    @     0x7f4c6f155996  Vlab::SMT::Begins::accept()
;    @     0x7f4c6f0599ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4c6f104878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f4c6f1455ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f4c6f13c96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f4c6f151b5c  Vlab::SMT::And::accept()
;    @     0x7f4c6f0599ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4c6f145a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4c6f13bd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f4c6f14fd2a  Vlab::SMT::Assert::accept()
;    @     0x7f4c6f0599ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4c6f15e699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4c6f14f067  Vlab::SMT::Script::visit_children()
;    @     0x7f4c6f0599e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4c6f13bb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f4c6f14f03c  Vlab::SMT::Script::accept()
;    @     0x7f4c6f0599ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4c6f13b7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4c6f03fb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f4c6e19b830  __libc_start_main
