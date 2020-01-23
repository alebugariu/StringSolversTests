(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:30.569393  2834 UnaryAutomaton.cpp:325] 1
;I0818 17:36:30.569409  2834 UnaryAutomaton.cpp:326] 1
;I0818 17:36:30.569417  2834 UnaryAutomaton.cpp:327] 1
;F0818 17:36:30.587765  2834 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f45d399bf5d  google::LogMessage::Fail()
;    @     0x7f45d399e513  google::LogMessage::SendToLog()
;    @     0x7f45d399baeb  google::LogMessage::Flush()
;    @     0x7f45d399d45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f45d409bfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f45d40b1842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f45d40b08f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f45d3fea102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f45d3fee07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f45d3f0cdab  std::function<>::operator()()
;    @     0x7f45d3f0a844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f45d4008cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f45d3f0c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45d3f0bbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f45d3feaa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f45d4004b5c  Vlab::SMT::And::accept()
;    @     0x7f45d3f0c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45d3fe9ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f45d3fef48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f45d4004b5c  Vlab::SMT::And::accept()
;    @     0x7f45d3f0c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45d3ff8a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f45d3ff03e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f45d4004ebe  Vlab::SMT::Or::accept()
;    @     0x7f45d3f0c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45d3ff8a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f45d3feed2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f45d4002d2a  Vlab::SMT::Assert::accept()
;    @     0x7f45d3f0c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f45d4011699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f45d4002067  Vlab::SMT::Script::visit_children()
;    @     0x7f45d3f0c9e0  Vlab::SMT::Visitor::visit_children_of()
