(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (= (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:37.551371  2909 UnaryAutomaton.cpp:325] 1
;I0818 17:36:37.551390  2909 UnaryAutomaton.cpp:326] 1
;I0818 17:36:37.551398  2909 UnaryAutomaton.cpp:327] 1
;F0818 17:36:37.561297  2909 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fb4f5441f5d  google::LogMessage::Fail()
;    @     0x7fb4f5444513  google::LogMessage::SendToLog()
;    @     0x7fb4f5441aeb  google::LogMessage::Flush()
;    @     0x7fb4f544345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fb4f5b41fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fb4f5b57842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fb4f5b568f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fb4f5a90102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fb4f5a9407b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fb4f59b2dab  std::function<>::operator()()
;    @     0x7fb4f59b0844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fb4f5aaecb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fb4f59b29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb4f59b1bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fb4f5a90a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fb4f5aaab5c  Vlab::SMT::And::accept()
;    @     0x7fb4f59b29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb4f5a8fca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fb4f5a9548c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb4f5aaab5c  Vlab::SMT::And::accept()
;    @     0x7fb4f59b29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb4f5a9ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb4f5a963e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fb4f5aaaebe  Vlab::SMT::Or::accept()
;    @     0x7fb4f59b29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb4f5a9ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb4f5a94d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb4f5aa8d2a  Vlab::SMT::Assert::accept()
;    @     0x7fb4f59b29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb4f5ab7699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb4f5aa8067  Vlab::SMT::Script::visit_children()
;    @     0x7fb4f59b29e0  Vlab::SMT::Visitor::visit_children_of()
