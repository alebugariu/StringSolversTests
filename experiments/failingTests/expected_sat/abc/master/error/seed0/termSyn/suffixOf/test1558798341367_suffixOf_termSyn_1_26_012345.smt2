(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:25.448566  2778 UnaryAutomaton.cpp:325] 1
;I0818 17:36:25.448587  2778 UnaryAutomaton.cpp:326] 1
;I0818 17:36:25.448596  2778 UnaryAutomaton.cpp:327] 1
;F0818 17:36:25.462288  2778 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f513e622f5d  google::LogMessage::Fail()
;    @     0x7f513e625513  google::LogMessage::SendToLog()
;    @     0x7f513e622aeb  google::LogMessage::Flush()
;    @     0x7f513e62445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f513ed22fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f513ed38842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f513ed378f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f513ec71102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f513ec7507b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f513eb93dab  std::function<>::operator()()
;    @     0x7f513eb91844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f513ec8fcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f513eb939ad  Vlab::SMT::Visitor::visit()
;    @     0x7f513eb92bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f513ec71a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f513ec8bb5c  Vlab::SMT::And::accept()
;    @     0x7f513eb939ad  Vlab::SMT::Visitor::visit()
;    @     0x7f513ec70ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f513ec7648c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f513ec8bb5c  Vlab::SMT::And::accept()
;    @     0x7f513eb939ad  Vlab::SMT::Visitor::visit()
;    @     0x7f513ec7fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f513ec773e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f513ec8bebe  Vlab::SMT::Or::accept()
;    @     0x7f513eb939ad  Vlab::SMT::Visitor::visit()
;    @     0x7f513ec7fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f513ec75d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f513ec89d2a  Vlab::SMT::Assert::accept()
;    @     0x7f513eb939ad  Vlab::SMT::Visitor::visit()
;    @     0x7f513ec98699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f513ec89067  Vlab::SMT::Script::visit_children()
;    @     0x7f513eb939e0  Vlab::SMT::Visitor::visit_children_of()
