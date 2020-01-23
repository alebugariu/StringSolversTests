(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:58.217756  3084 UnaryAutomaton.cpp:325] 1
;I0818 17:36:58.217772  3084 UnaryAutomaton.cpp:326] 1
;I0818 17:36:58.217779  3084 UnaryAutomaton.cpp:327] 1
;F0818 17:36:58.260423  3084 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f3fef530f5d  google::LogMessage::Fail()
;    @     0x7f3fef533513  google::LogMessage::SendToLog()
;    @     0x7f3fef530aeb  google::LogMessage::Flush()
;    @     0x7f3fef53245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f3fefc30fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f3fefc46842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f3fefc458f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f3fefb7f102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f3fefb8307b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f3fefaa1dab  std::function<>::operator()()
;    @     0x7f3fefa9f844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f3fefb9dcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f3fefaa19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fefaa0bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f3fefb7fa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f3fefb99b5c  Vlab::SMT::And::accept()
;    @     0x7f3fefaa19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fefb7eca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f3fefb8448c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3fefb99b5c  Vlab::SMT::And::accept()
;    @     0x7f3fefaa19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fefb8da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3fefb853e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f3fefb99ebe  Vlab::SMT::Or::accept()
;    @     0x7f3fefaa19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fefb8da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3fefb83d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3fefb97d2a  Vlab::SMT::Assert::accept()
;    @     0x7f3fefaa19ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fefba6699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3fefb97067  Vlab::SMT::Script::visit_children()
;    @     0x7f3fefaa19e0  Vlab::SMT::Visitor::visit_children_of()
