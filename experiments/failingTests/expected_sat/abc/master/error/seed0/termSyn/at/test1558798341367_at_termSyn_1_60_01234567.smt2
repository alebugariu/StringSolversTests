(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.substr tmp_str0 tmp_int1 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:22.914072  3298 UnaryAutomaton.cpp:325] 1
;I0818 17:37:22.914124  3298 UnaryAutomaton.cpp:326] 1
;I0818 17:37:22.914134  3298 UnaryAutomaton.cpp:327] 1
;F0818 17:37:22.919836  3298 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f04ed392f5d  google::LogMessage::Fail()
;    @     0x7f04ed395513  google::LogMessage::SendToLog()
;    @     0x7f04ed392aeb  google::LogMessage::Flush()
;    @     0x7f04ed39445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f04ed9b6a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f04eda04992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f04ed9039ad  Vlab::SMT::Visitor::visit()
;    @     0x7f04ed9b5762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f04eda01df0  Vlab::SMT::ToString::accept()
;    @     0x7f04ed9039ad  Vlab::SMT::Visitor::visit()
;    @     0x7f04ed9b07f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f04ed9fd450  Vlab::SMT::Eq::accept()
;    @     0x7f04ed9039ad  Vlab::SMT::Visitor::visit()
;    @     0x7f04ed9ae878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f04ed9ef5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f04ed9e696e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f04ed9fbb5c  Vlab::SMT::And::accept()
;    @     0x7f04ed9039ad  Vlab::SMT::Visitor::visit()
;    @     0x7f04ed9efa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f04ed9e5d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f04ed9f9d2a  Vlab::SMT::Assert::accept()
;    @     0x7f04ed9039ad  Vlab::SMT::Visitor::visit()
;    @     0x7f04eda08699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f04ed9f9067  Vlab::SMT::Script::visit_children()
;    @     0x7f04ed9039e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f04ed9e5b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f04ed9f903c  Vlab::SMT::Script::accept()
;    @     0x7f04ed9039ad  Vlab::SMT::Visitor::visit()
;    @     0x7f04ed9e57bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f04ed8e9b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f04eca45830  __libc_start_main
