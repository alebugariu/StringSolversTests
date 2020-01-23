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
;I0818 17:36:39.506040  2931 UnaryAutomaton.cpp:325] 1
;I0818 17:36:39.506057  2931 UnaryAutomaton.cpp:326] 1
;I0818 17:36:39.506064  2931 UnaryAutomaton.cpp:327] 1
;F0818 17:36:39.519006  2931 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f8930915f5d  google::LogMessage::Fail()
;    @     0x7f8930918513  google::LogMessage::SendToLog()
;    @     0x7f8930915aeb  google::LogMessage::Flush()
;    @     0x7f893091745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f8931015fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f893102b842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f893102a8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f8930f64102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f8930f6807b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f8930e86dab  std::function<>::operator()()
;    @     0x7f8930e84844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f8930f82cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f8930e869ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8930e85bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f8930f64a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f8930f7eb5c  Vlab::SMT::And::accept()
;    @     0x7f8930e869ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8930f63ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f8930f6948c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8930f7eb5c  Vlab::SMT::And::accept()
;    @     0x7f8930e869ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8930f72a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8930f6a3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f8930f7eebe  Vlab::SMT::Or::accept()
;    @     0x7f8930e869ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8930f72a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8930f68d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8930f7cd2a  Vlab::SMT::Assert::accept()
;    @     0x7f8930e869ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8930f8b699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8930f7c067  Vlab::SMT::Script::visit_children()
;    @     0x7f8930e869e0  Vlab::SMT::Visitor::visit_children_of()
