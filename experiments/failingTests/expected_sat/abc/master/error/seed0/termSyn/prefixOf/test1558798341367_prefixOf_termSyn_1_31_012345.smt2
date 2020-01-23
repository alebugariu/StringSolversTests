(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:34.646504  2876 UnaryAutomaton.cpp:325] 1
;I0818 17:36:34.646522  2876 UnaryAutomaton.cpp:326] 1
;I0818 17:36:34.646530  2876 UnaryAutomaton.cpp:327] 1
;F0818 17:36:34.664645  2876 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fe41ee9bf5d  google::LogMessage::Fail()
;    @     0x7fe41ee9e513  google::LogMessage::SendToLog()
;    @     0x7fe41ee9baeb  google::LogMessage::Flush()
;    @     0x7fe41ee9d45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fe41f59bfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fe41f5b1842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fe41f5b08f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fe41f4ea102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fe41f4ee07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fe41f40cdab  std::function<>::operator()()
;    @     0x7fe41f40a844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fe41f508cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fe41f40c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe41f40bbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fe41f4eaa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fe41f504b5c  Vlab::SMT::And::accept()
;    @     0x7fe41f40c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe41f4e9ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fe41f4ef48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fe41f504b5c  Vlab::SMT::And::accept()
;    @     0x7fe41f40c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe41f4f8a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe41f4f03e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fe41f504ebe  Vlab::SMT::Or::accept()
;    @     0x7fe41f40c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe41f4f8a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe41f4eed2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fe41f502d2a  Vlab::SMT::Assert::accept()
;    @     0x7fe41f40c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe41f511699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fe41f502067  Vlab::SMT::Script::visit_children()
;    @     0x7fe41f40c9e0  Vlab::SMT::Visitor::visit_children_of()
