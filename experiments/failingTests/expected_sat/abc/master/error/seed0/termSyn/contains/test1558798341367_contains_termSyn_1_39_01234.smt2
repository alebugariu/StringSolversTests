(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.contains tmp_str9 tmp_str9)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a
;actual status: not_implemented
;I0818 17:37:02.302312  3117 UnaryAutomaton.cpp:325] 1
;I0818 17:37:02.302335  3117 UnaryAutomaton.cpp:326] 1
;I0818 17:37:02.302342  3117 UnaryAutomaton.cpp:327] 1
;I0818 17:37:02.307521  3117 UnaryAutomaton.cpp:325] 1
;I0818 17:37:02.307551  3117 UnaryAutomaton.cpp:326] 1
;I0818 17:37:02.307560  3117 UnaryAutomaton.cpp:327] 1
;I0818 17:37:02.335696  3117 UnaryAutomaton.cpp:325] 1
;I0818 17:37:02.335733  3117 UnaryAutomaton.cpp:326] 1
;I0818 17:37:02.335742  3117 UnaryAutomaton.cpp:327] 1
;I0818 17:37:02.341537  3117 UnaryAutomaton.cpp:325] 1
;I0818 17:37:02.341563  3117 UnaryAutomaton.cpp:326] 1
;I0818 17:37:02.341572  3117 UnaryAutomaton.cpp:327] 1
;F0818 17:37:02.347736  3117 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str9)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f48e9605f5d  google::LogMessage::Fail()
;    @     0x7f48e9608513  google::LogMessage::SendToLog()
;    @     0x7f48e9605aeb  google::LogMessage::Flush()
;    @     0x7f48e960745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f48e9d05fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f48e9d1b842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f48e9d1a8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f48e9c54102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f48e9c5807b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f48e9b76dab  std::function<>::operator()()
;    @     0x7f48e9b74844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f48e9c72cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f48e9b769ad  Vlab::SMT::Visitor::visit()
;    @     0x7f48e9b75bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f48e9c54a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f48e9c6eb5c  Vlab::SMT::And::accept()
;    @     0x7f48e9b769ad  Vlab::SMT::Visitor::visit()
;    @     0x7f48e9c53ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f48e9c5948c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f48e9c6eb5c  Vlab::SMT::And::accept()
;    @     0x7f48e9b769ad  Vlab::SMT::Visitor::visit()
;    @     0x7f48e9c62a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f48e9c5a3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f48e9c6eebe  Vlab::SMT::Or::accept()
;    @     0x7f48e9b769ad  Vlab::SMT::Visitor::visit()
;    @     0x7f48e9c62a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f48e9c58d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f48e9c6cd2a  Vlab::SMT::Assert::accept()
;    @     0x7f48e9b769ad  Vlab::SMT::Visitor::visit()
;    @     0x7f48e9c7b699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f48e9c6c067  Vlab::SMT::Script::visit_children()
;    @     0x7f48e9b769e0  Vlab::SMT::Visitor::visit_children_of()
