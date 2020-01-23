(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:27.462112  2800 UnaryAutomaton.cpp:325] 1
;I0818 17:36:27.462131  2800 UnaryAutomaton.cpp:326] 1
;I0818 17:36:27.462138  2800 UnaryAutomaton.cpp:327] 1
;F0818 17:36:27.484513  2800 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f9c362d4f5d  google::LogMessage::Fail()
;    @     0x7f9c362d7513  google::LogMessage::SendToLog()
;    @     0x7f9c362d4aeb  google::LogMessage::Flush()
;    @     0x7f9c362d645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f9c369d4fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f9c369ea842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f9c369e98f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f9c36923102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f9c3692707b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f9c36845dab  std::function<>::operator()()
;    @     0x7f9c36843844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f9c36941cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f9c368459ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9c36844bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f9c36923a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f9c3693db5c  Vlab::SMT::And::accept()
;    @     0x7f9c368459ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9c36922ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f9c3692848c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f9c3693db5c  Vlab::SMT::And::accept()
;    @     0x7f9c368459ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9c36931a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9c369293e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f9c3693debe  Vlab::SMT::Or::accept()
;    @     0x7f9c368459ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9c36931a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9c36927d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f9c3693bd2a  Vlab::SMT::Assert::accept()
;    @     0x7f9c368459ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9c3694a699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9c3693b067  Vlab::SMT::Script::visit_children()
;    @     0x7f9c368459e0  Vlab::SMT::Visitor::visit_children_of()
