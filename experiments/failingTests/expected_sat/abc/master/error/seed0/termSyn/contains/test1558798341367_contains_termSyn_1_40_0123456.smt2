(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:05.738813  3144 UnaryAutomaton.cpp:325] 1
;I0818 17:37:05.738831  3144 UnaryAutomaton.cpp:326] 1
;I0818 17:37:05.738839  3144 UnaryAutomaton.cpp:327] 1
;I0818 17:37:05.783638  3144 UnaryAutomaton.cpp:325] 1
;I0818 17:37:05.783744  3144 UnaryAutomaton.cpp:326] 1
;I0818 17:37:05.783788  3144 UnaryAutomaton.cpp:327] 1
;F0818 17:37:05.806005  3144 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f3cd5ffaf5d  google::LogMessage::Fail()
;    @     0x7f3cd5ffd513  google::LogMessage::SendToLog()
;    @     0x7f3cd5ffaaeb  google::LogMessage::Flush()
;    @     0x7f3cd5ffc45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f3cd66fafcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f3cd6710842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f3cd670f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f3cd6649102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f3cd664d07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f3cd656bdab  std::function<>::operator()()
;    @     0x7f3cd6569844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f3cd6667cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f3cd656b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3cd656abee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f3cd6649a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f3cd6663b5c  Vlab::SMT::And::accept()
;    @     0x7f3cd656b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3cd6648ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f3cd664e48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3cd6663b5c  Vlab::SMT::And::accept()
;    @     0x7f3cd656b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3cd6657a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3cd664f3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f3cd6663ebe  Vlab::SMT::Or::accept()
;    @     0x7f3cd656b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3cd6657a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3cd664dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3cd6661d2a  Vlab::SMT::Assert::accept()
;    @     0x7f3cd656b9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3cd6670699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3cd6661067  Vlab::SMT::Script::visit_children()
;    @     0x7f3cd656b9e0  Vlab::SMT::Visitor::visit_children_of()
