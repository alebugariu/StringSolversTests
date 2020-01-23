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
;I0818 17:36:34.839082  2878 UnaryAutomaton.cpp:325] 1
;I0818 17:36:34.839124  2878 UnaryAutomaton.cpp:326] 1
;I0818 17:36:34.839133  2878 UnaryAutomaton.cpp:327] 1
;F0818 17:36:34.867552  2878 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fd0f54fff5d  google::LogMessage::Fail()
;    @     0x7fd0f5502513  google::LogMessage::SendToLog()
;    @     0x7fd0f54ffaeb  google::LogMessage::Flush()
;    @     0x7fd0f550145e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fd0f5bfffcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fd0f5c15842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fd0f5c148f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fd0f5b4e102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fd0f5b5207b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fd0f5a70dab  std::function<>::operator()()
;    @     0x7fd0f5a6e844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fd0f5b6ccb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fd0f5a709ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd0f5a6fbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fd0f5b4ea21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fd0f5b68b5c  Vlab::SMT::And::accept()
;    @     0x7fd0f5a709ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd0f5b4dca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fd0f5b5348c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd0f5b68b5c  Vlab::SMT::And::accept()
;    @     0x7fd0f5a709ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd0f5b5ca82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd0f5b543e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fd0f5b68ebe  Vlab::SMT::Or::accept()
;    @     0x7fd0f5a709ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd0f5b5ca82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd0f5b52d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd0f5b66d2a  Vlab::SMT::Assert::accept()
;    @     0x7fd0f5a709ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd0f5b75699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd0f5b66067  Vlab::SMT::Script::visit_children()
;    @     0x7fd0f5a709e0  Vlab::SMT::Visitor::visit_children_of()
