(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:29.321388  2820 UnaryAutomaton.cpp:325] 1
;I0818 17:36:29.321427  2820 UnaryAutomaton.cpp:326] 1
;I0818 17:36:29.321437  2820 UnaryAutomaton.cpp:327] 1
;F0818 17:36:29.340168  2820 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f2bab708f5d  google::LogMessage::Fail()
;    @     0x7f2bab70b513  google::LogMessage::SendToLog()
;    @     0x7f2bab708aeb  google::LogMessage::Flush()
;    @     0x7f2bab70a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f2babe08fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f2babe1e842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f2babe1d8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f2babd57102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f2babd5b07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f2babc79dab  std::function<>::operator()()
;    @     0x7f2babc77844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f2babd75cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f2babc799ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2babc78bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f2babd57a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f2babd71b5c  Vlab::SMT::And::accept()
;    @     0x7f2babc799ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2babd56ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f2babd5c48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2babd71b5c  Vlab::SMT::And::accept()
;    @     0x7f2babc799ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2babd65a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2babd5d3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f2babd71ebe  Vlab::SMT::Or::accept()
;    @     0x7f2babc799ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2babd65a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2babd5bd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2babd6fd2a  Vlab::SMT::Assert::accept()
;    @     0x7f2babc799ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2babd7e699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2babd6f067  Vlab::SMT::Script::visit_children()
;    @     0x7f2babc799e0  Vlab::SMT::Visitor::visit_children_of()
