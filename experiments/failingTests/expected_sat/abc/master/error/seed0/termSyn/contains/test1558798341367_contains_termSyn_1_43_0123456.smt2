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
;I0818 17:37:02.519548  3120 UnaryAutomaton.cpp:325] 1
;I0818 17:37:02.519567  3120 UnaryAutomaton.cpp:326] 1
;I0818 17:37:02.519574  3120 UnaryAutomaton.cpp:327] 1
;I0818 17:37:02.671586  3120 UnaryAutomaton.cpp:325] 1
;I0818 17:37:02.673739  3120 UnaryAutomaton.cpp:326] 1
;I0818 17:37:02.673763  3120 UnaryAutomaton.cpp:327] 1
;F0818 17:37:02.716374  3120 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f39fd61df5d  google::LogMessage::Fail()
;    @     0x7f39fd620513  google::LogMessage::SendToLog()
;    @     0x7f39fd61daeb  google::LogMessage::Flush()
;    @     0x7f39fd61f45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f39fdd1dfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f39fdd33842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f39fdd328f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f39fdc6c102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f39fdc7007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f39fdb8edab  std::function<>::operator()()
;    @     0x7f39fdb8c844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f39fdc8acb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f39fdb8e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f39fdb8dbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f39fdc6ca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f39fdc86b5c  Vlab::SMT::And::accept()
;    @     0x7f39fdb8e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f39fdc6bca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f39fdc7148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f39fdc86b5c  Vlab::SMT::And::accept()
;    @     0x7f39fdb8e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f39fdc7aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f39fdc723e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f39fdc86ebe  Vlab::SMT::Or::accept()
;    @     0x7f39fdb8e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f39fdc7aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f39fdc70d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f39fdc84d2a  Vlab::SMT::Assert::accept()
;    @     0x7f39fdb8e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f39fdc93699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f39fdc84067  Vlab::SMT::Script::visit_children()
;    @     0x7f39fdb8e9e0  Vlab::SMT::Visitor::visit_children_of()
