(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:23.650036  2758 UnaryAutomaton.cpp:325] 1
;I0818 17:36:23.650053  2758 UnaryAutomaton.cpp:326] 1
;I0818 17:36:23.650060  2758 UnaryAutomaton.cpp:327] 1
;F0818 17:36:23.668910  2758 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f9837a78f5d  google::LogMessage::Fail()
;    @     0x7f9837a7b513  google::LogMessage::SendToLog()
;    @     0x7f9837a78aeb  google::LogMessage::Flush()
;    @     0x7f9837a7a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f9838178fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f983818e842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f983818d8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f98380c7102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f98380cb07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f9837fe9dab  std::function<>::operator()()
;    @     0x7f9837fe7844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f98380e5cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f9837fe99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9837fe8bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f98380c7a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f98380e1b5c  Vlab::SMT::And::accept()
;    @     0x7f9837fe99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98380c6ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f98380cc48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f98380e1b5c  Vlab::SMT::And::accept()
;    @     0x7f9837fe99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98380d5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f98380cd3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f98380e1ebe  Vlab::SMT::Or::accept()
;    @     0x7f9837fe99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98380d5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f98380cbd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f98380dfd2a  Vlab::SMT::Assert::accept()
;    @     0x7f9837fe99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f98380ee699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f98380df067  Vlab::SMT::Script::visit_children()
;    @     0x7f9837fe99e0  Vlab::SMT::Visitor::visit_children_of()
